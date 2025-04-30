#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2023 AMD Inc.
import numpy as np

from aie.extras.context import mlir_mod_ctx
from aie.dialects.aie import *
from aie.dialects.aiex import *
from aie.helpers.dialects.ext.scf import _for as range_


def my_matmul():
    M = 1
    K = 2048
    N = 2048
    
    m = 32
    k = 32
    n = 32

    n_cores = 1

    A_sz = M * K
    B_sz = K
    C_sz = M*N
    C_sz_div_n_cores = C_sz // n_cores

    M_div_m = M // m
    M_div_m_div_n_cores = M // (m * n_cores)
    N_div_n_div_n_cores = N // (n * n_cores)
    
    K_div_k = K // k
    N_div_n = N // n

    m_x_k = m * k
    m_x_K = m * K

    # FIXME vectorized kernel is currently erroneous
    vectorized = False

    dtype_in = np.dtype[np.int16]
    dtype_in_str = "i16"
    dtype_out = np.dtype[np.int32]
    dtype_out_str = "i32"

    with mlir_mod_ctx() as ctx:

        @device(AIEDevice.npu1_4col)
        def device_body():
            # inA_ty = np.ndarray[(m * k,), dtype_in]
            inA_ty = np.ndarray[(k,), dtype_in] #for vector matrix
            inB_ty = np.ndarray[(k*n,), dtype_in]
            outC_ty = np.ndarray[(n,), dtype_out] # for vector matrix
            A_ty = np.ndarray[(m, k), dtype_in]
            B_ty = np.ndarray[(k, n), dtype_in] # for vector matrix

            # AIE Core Function declarations
            func_type = "vectorized" if vectorized else "scalar"
            zero = external_func(f"zero_{func_type}_{dtype_out_str}", inputs=[outC_ty])
            matvec = external_func(
                f"matvec_{func_type}_{dtype_in_str}_{dtype_out_str}",
                inputs=[B_ty ,inA_ty, outC_ty],
            )

            # Tile declarations
            ShimTile0 = tile(0, 0)
            ShimTile1 = tile(1, 0)
            ShimTile2 = tile(2, 0)
            ShimTile3 = tile(3, 0)
            ShimTiles = [ShimTile0, ShimTile1, ShimTile2, ShimTile3]
            MemTile0 = tile(0, 1)
            MemTile1 = tile(1, 1)
            MemTile2 = tile(2, 1)
            MemTile3 = tile(3, 1)
            MemTiles = [MemTile0, MemTile1, MemTile2, MemTile3]
            ComputeTile0 = tile(0, 2)
            ComputeTile1 = tile(1, 2)
            ComputeTile2 = tile(2, 2)
            ComputeTile3 = tile(3, 2)
            cores = [ComputeTile0, ComputeTile1, ComputeTile2, ComputeTile3]
            memB_fifos = []
            # inA_fifos = []
            inB_fifos = []  
            outC_fifos = []

            # AIE-array data movement with object fifos
            # Input B
            for i in range(n_cores):
                memB_fifos.append(
                    object_fifo(f"memB{i}", ShimTiles[i], MemTiles[i], 2, inB_ty)
                )
                inB_fifos.append(
                    object_fifo(
                        f"inB{i}",
                        MemTiles[i],
                        cores[i],
                        2,
                        B_ty,
                        (
                            [
                                # (k // 2 // 2, 2),
                                # (m, k),
                                # (2, 1), # size, stride
                                (n // 2 //2 , 2),
                                (k, n),
                                (2, 1)
                            ]
                            if vectorized
                            else []
                        ),  # transpose at 4-byte (2xbf16) granularity
                    )
                )
                object_fifo_link(memB_fifos[i], inB_fifos[i])

                # Output C
                outC_fifos.append(
                    object_fifo(f"outC{i}", cores[i], ShimTiles[i], 2, outC_ty)
                )

            # Input A
            inA_fifo = object_fifo(
                "inA", ShimTiles[1 % n_cores], cores[0:n_cores], 2, inA_ty
            )

            # Set up compute tiles
            for i in range(n_cores):
                # Compute tile i
                @core(cores[i], f"mv_{m}x{k}.o")
                def core_body():
                    for _ in range_(0xFFFFFFFF):
                        elem_out = outC_fifos[i].acquire(
                            ObjectFifoPort.Produce,
                            1,
                        )
                        zero(elem_out)

                        for _ in range_(N_div_n):
                            elem_in_a = inA_fifo.acquire(ObjectFifoPort.Consume, 1)
                            elem_in_b = inB_fifos[i].acquire(ObjectFifoPort.Consume, 1)
                            matvec(elem_in_b,elem_in_a , elem_out)
                            inA_fifo.release(ObjectFifoPort.Consume, 1)
                            inB_fifos[i].release(ObjectFifoPort.Consume, 1)

                        outC_fifos[i].release(ObjectFifoPort.Produce, 1)

            # To/from AIE-array data movement

            @runtime_sequence(
                np.ndarray[(A_sz,), dtype_in],
                np.ndarray[(B_sz,), dtype_in],
                np.ndarray[(C_sz,), dtype_out],
            )
            def sequence(A, B, C):
                # npu_dma_memcpy_nd(
                #     metadata=inB_fifo,
                #     bd_id=2,
                #     mem=B,
                #     sizes=[M_div_m_div_n_cores, 1, 1, K],
                #     strides=[0, 0, 0, 1],
                # )
                npu_dma_memcpy_nd(
                    metadata=inA_fifo,
                    bd_id=2,
                    mem=A,
                    sizes=[N_div_n_div_n_cores, 1, 1, K],
                    strides=[0, 0, 0, 1],
                )
                for i in range(n_cores):
                    # A_offset = i * M_div_m_div_n_cores * m * K
                    B_offset = i * N_div_n_div_n_cores * N * k
                    # C_offset = i * M_div_m_div_n_cores * n
                    C_offset = i * N_div_n_div_n_cores * k
                    npu_dma_memcpy_nd(
                        metadata=memB_fifos[i],
                        bd_id=1,
                        mem=B,
                        offsets=[0, 0, 0, B_offset],
                        sizes=[K_div_k, N_div_n, k, n],
                        strides=[k*N, n, N, 1],
                    )
                    npu_dma_memcpy_nd(
                        metadata=outC_fifos[i],
                        bd_id=0,
                        mem=C,
                        offsets=[0, 0, 0, C_offset],
                        sizes=[1, 1, 1, C_sz_div_n_cores],
                        strides=[0, 0, 0, 1],
                    )
                dma_wait(*outC_fifos)

    print(ctx.module)


my_matmul()
