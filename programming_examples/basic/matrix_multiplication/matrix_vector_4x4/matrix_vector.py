#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2025 AMD Inc.
import numpy as np
import argparse

from aie.extras.context import mlir_mod_ctx
from aie.dialects.aie import *
from aie.dialects.aiex import *
from aie.helpers.dialects.ext.scf import _for as range_
from aie.helpers.taplib import TensorAccessPattern, TensorAccessSequence

def my_matmul(dev, M, K):
    # M = 288
    # K = 288
 
    m = 32
    k = 32

    n_cores = 4
    n_rows = 4 

    A_sz = M * K
    B_sz = K
    C_sz = M
    C_sz_div_n_cores = C_sz // n_cores 

    M_div_m = M // m
    M_div_m_div_n_cores = M // (m * n_cores) 
    K_div_k = K // k

    m_x_k = m * k
    m_x_K = m * K

    A_taps = []
    B_taps = []
    C_taps = []
    # FIXME vectorized kernel is currently erroneous
    vectorized = True

    dtype_in = np.dtype[np.int16]
    dtype_in_str = "i16"
    dtype_out = np.dtype[np.int32]
    dtype_out_str = "i32"

    with mlir_mod_ctx() as ctx:

        if dev == "npu":
            dev_ty = AIEDevice.npu1_4col
        else:
            dev_ty = AIEDevice.npu2

        @device(dev_ty)
        def device_body():
            inA_ty = np.ndarray[(m * k * 4,), dtype_in]
            inB_ty = np.ndarray[(k,), dtype_in]
            MemC_ty = np.ndarray[(m * 4,), dtype_out]
            outC_ty = np.ndarray[(m,), dtype_out]
            A_ty = np.ndarray[(m, k), dtype_in]

            # AIE Core Function declarations
            func_type = "vectorized" if vectorized else "scalar"
            zero = external_func(f"zero_{func_type}_{dtype_out_str}", inputs=[outC_ty])
            matvec = external_func(
                f"matvec_{func_type}_{dtype_in_str}_{dtype_out_str}",
                inputs=[A_ty, inB_ty, outC_ty],
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
            memA_fifos = []
            inA_fifos = [[None] * n_cores for _ in range(n_rows)]
            outC_fifos = [[None] * n_cores for _ in range(n_rows)]
            inB_fifos = [None] * n_cores
            memB_fifos = []
            memC_fifos = []
            # tiles = [
            #     [tile(col, row) for col in range(0, n_cores)] for row in range(0, 6)
            # ]
            # cores = tiles[2:]
            cores = [
                [tile(col, row) for col in range(0, n_cores)] for row in range(2, 2 + n_rows)
            ]
            # AIE-array data movement with object fifos
            # Input A
            for i in range(n_cores):
                memA_fifos.append(
                    object_fifo(f"memA{i}", ShimTiles[i], MemTiles[i], 2, inA_ty)
                )
                for row in range(n_rows):
                    inA_fifos[row][i]= object_fifo(
                            f"inA{row}{i}",
                            MemTiles[i],
                            cores[row][i],
                            2,
                            A_ty,
                            (
                                [
                                    (k  // 2, 2),
                                    (m, k),
                                    (2, 1),
                                ]
                                if vectorized
                                else []
                            ),  # transpose at 4-byte (2xbf16) granularity
                        )
                
                object_fifo_link(memA_fifos[i], [inA_fifos[row][i] for row in range(n_rows)],[],[m*k*j for j in range(n_rows)])#

                # Output C
                memC_fifos.append(
                    object_fifo(f"memC{i}", MemTiles[i], ShimTiles[i],2, MemC_ty) 
                )
                for row in range(n_rows):
                    outC_fifos[row][i]=object_fifo(
                            f"outC{row}{i}", 
                            cores[row][i], 
                            MemTiles[i], 
                            2, 
                            outC_ty,
                            []
                        )
                    
                object_fifo_link(
                    [outC_fifos[row][i] for row in range(n_rows)],
                    memC_fifos[i], 
                    [m*j for j in range(n_rows)],
                    # [0,0,0,0],
                    []
                )

                #Input B

                memB_fifos.append(
                    object_fifo(f"memB{i}", ShimTiles[i], MemTiles[i], 2, inB_ty)
                )
                
                
                inB_fifos[i] = object_fifo(
                    f"inB{i}", MemTiles[i], [cores[j][i] for j in range(n_rows)], 2, inB_ty
                )
                
                # Link memB to all inB fifos for this column
                object_fifo_link(
                    memB_fifos[i], 
                    inB_fifos[i],
                    )#

            # Set up compute tiles
            for row in range(n_rows):
                for i in range(n_cores):
                # Compute tile i
                    @core(cores[row][i], f"mv_{m}x{k}.o")
                    def core_body():
                        for _ in range_(0xFFFFFFFF):
                            elem_out = outC_fifos[row][i].acquire(
                                ObjectFifoPort.Produce,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                1,
                            )
                            zero(elem_out)
                            
                            for _ in range_(K_div_k):
                                elem_in_a = inA_fifos[row][i].acquire(ObjectFifoPort.Consume, 1)
                                elem_in_b = inB_fifos[i].acquire(ObjectFifoPort.Consume, 1)
                                matvec(elem_in_a, elem_in_b, elem_out)
                                inA_fifos[row][i].release(ObjectFifoPort.Consume, 1)
                                inB_fifos[i].release(ObjectFifoPort.Consume, 1)

                            outC_fifos[row][i].release(ObjectFifoPort.Produce, 1)

            # To/from AIE-array data movement

            @runtime_sequence(
                np.ndarray[(A_sz,), dtype_in],
                np.ndarray[(B_sz,), dtype_in],
                np.ndarray[(C_sz,), dtype_out],
            )
            def sequence(A, B, C):
                num_iter = M//m// n_cores// n_rows
                for j in range(num_iter):
                    for i in range(n_cores):
                        B_size3 = M_div_m_div_n_cores// n_rows// num_iter
                        npu_dma_memcpy_nd(
                            metadata=memB_fifos[i],
                            bd_id=2,
                            mem=B,
                            sizes=[B_size3, 1, 1, K],
                            strides=[0, 0, 0, 1],
                        )
                    for i in range(n_cores):
                        A_offset = (i) * M_div_m_div_n_cores * m * K//num_iter +j*K*M//num_iter
                        A_sizes = [K_div_k , n_rows, m, k]
                        A_strides = [k,m_x_K, K, 1]
                        npu_dma_memcpy_nd(
                                metadata=memA_fifos[i],
                                bd_id=1,
                                mem=A,
                                offsets=[0, 0, 0, A_offset],
                                sizes=A_sizes,
                                strides=A_strides,
                            )
                    for i in range(n_cores):
                        C_offset = i * M // n_cores//num_iter +j*M//num_iter
                        C_size0 = C_sz_div_n_cores//num_iter
                        npu_dma_memcpy_nd(
                            metadata=memC_fifos[i],
                            bd_id=0,
                            mem=C,
                            offsets=[0, 0, 0, C_offset],
                            sizes=[1, 1, 1, C_size0],
                            strides=[0, 0, 0, 1],
                        )
                        
                    dma_wait(*[memC_fifos[i] for i in range(n_cores)])

    print(ctx.module)

if __name__ == "__main__":
    argparser = argparse.ArgumentParser(
        prog="AIE Matrix Vector Multiplication MLIR Design",
    )
    argparser.add_argument("--dev", type=str, choices=["npu", "npu2"], default="npu")
    argparser.add_argument("-M", type=int, default=256)
    argparser.add_argument("-K", type=int, default=256)
    args, _ = argparser.parse_known_args()  # <- ignore the rest args in makefile-common
    dev = args.dev
    M = args.M
    K = args.K
    my_matmul(dev, M, K)
                                                                                                       