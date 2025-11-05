#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2025 AMD Inc.
import argparse
import numpy as np

from aie.extras.context import mlir_mod_ctx

from aie.dialects.aie import *
from aie.dialects.aiex import *
from aie.helpers.dialects.ext.scf import _for as range_
from aie.helpers.taplib import TensorAccessPattern, TensorAccessSequence

from aie.iron import str_to_dtype





def main():
    argparser = argparse.ArgumentParser(
        prog="AIE Matrix Multiplication MLIR Design (Whole Array)",
        description="Emits MLIR code for a matrix multiplication design of the given input size",
    )
    argparser.add_argument("--dev", type=str, choices=["npu", "npu2"], default="npu")
    argparser.add_argument("-M", type=int, default=512)
    argparser.add_argument("-K", type=int, default=512)
    argparser.add_argument("-N", type=int, default=1)
    argparser.add_argument("-m", type=int, default=64)
    argparser.add_argument("-k", type=int, default=16)
    argparser.add_argument("-n", type=int, default=32)
    argparser.add_argument("--n-aie-cols", type=int, choices=[1, 2, 4, 8], default=4)
    argparser.add_argument("--b-col-maj", type=int, choices=[0, 1], default=0)
    argparser.add_argument("--c-col-maj", type=int, choices=[0, 1], default=0)
    # Whether to use the scalar kernel; this is low, but can be useful for debugging smaller sizes
    argparser.add_argument("--scalar", type=bool, choices=[0, 1], default=0)
    argparser.add_argument("--emulate-bf16-mmul-with-bfp16", type=bool, default=False)
    argparser.add_argument(
        "--dtype_in", type=str, choices=["bf16", "i8", "i16"], default="i16"
    )
    argparser.add_argument(
        "--dtype_out",
        type=str,
        choices=["bf16", "i8", "i16", "f32", "i32"],
        default="i16",
    )
    argparser.add_argument("--trace_size", type=int, default=0)
    argparser.add_argument(
        "--generate-taps",
        action="store_true",
        help="Generate TensorAccessPatterns, a Python object to represent each data transfer"
        "of the input/output matrices. These objects can be used for visualization.",
    )
    args = argparser.parse_args()
    with mlir_mod_ctx() as ctx:
        maybe_taps = my_matmul(
            args.dev,
            args.M,
            args.K,
            args.N,
            args.m,
            args.k,
            args.n,
            args.n_aie_cols,
            args.dtype_in,  
            args.dtype_out,
            args.b_col_maj,
            args.c_col_maj,
            args.scalar,
            args.emulate_bf16_mmul_with_bfp16,
            args.trace_size,
            args.generate_taps,
        )
        # print(ctx.module.operation.verify())
        print(ctx.module)

    if args.generate_taps:
        return maybe_taps


def ceildiv(a, b):
    return (a + b - 1) // b


def my_matmul(
    dev,
    M,
    K,
    N,
    m,
    k,
    n,
    n_aie_cols,
    dtype_in_str,
    dtype_out_str,
    b_col_maj,
    c_col_maj,
    use_scalar,
    emulate_bf16_mmul_with_bfp16,
    trace_size,
    generate_taps=False,
):
    n_aie_rows = 1
    n_aie_cores = n_aie_rows * n_aie_cols

    dtype_in = str_to_dtype(dtype_in_str)
    dtype_out = str_to_dtype(dtype_out_str)

    assert np.issubdtype(dtype_in, np.integer) == np.issubdtype(
        dtype_out, np.integer
    ), f"Input dtype ({dtype_in}) and output dtype ({dtype_out}) must either both be integral or both be float"
    assert (
        np.dtype(dtype_out).itemsize >= np.dtype(dtype_in).itemsize
    ), f"Output dtype ({dtype_out}) must be equal or larger to input dtype ({dtype_in})"


    # npu is a 4 row x 4 col array
    if dev == "npu" and n_aie_cols > 4:
        raise AssertionError("Invalid configuration: NPU (Phoenix/Hawk) has 4 columns")
    # npu2 is a 4 row x 8 col array
    if dev == "npu2" and n_aie_cols > 8:
        raise AssertionError(
            "Invalid configuration: NPU2 (Strix/Strix Halo/Krackan) has 8 columns"
        )

    # Input matrix A:
    # Conceptually, we divide input A into (m * n_aie_rows, k)-sized blocks. These
    # blocks are _broadcast_ across AIE core columns, then _distributed_ across
    # rows, s.t. each of the n_aie_rows compute cores in a column receives a
    # contiguous (m, k)-sized block of A.
    assert (
        M % (m * n_aie_rows) == 0
    ), """A must be tileable into (m * n_aie_rows, k)-sized blocks"""

    # Both A and B are tiled in the K dimension into size k.
    assert K % k == 0


    # If you get errors during CDO generation due to running out of program
    # memory, it may be because too much code is generated due to ObjectFIFO
    # loop unrollings. Reducing the depth to 1 here will work around that at
    # a big performance cost.
    fifo_depth = 2

   
    if dev == "npu":
        if n_aie_cols == 1:
            dev_ty = AIEDevice.npu1_1col
        elif n_aie_cols == 2:
            dev_ty = AIEDevice.npu1_2col
        elif n_aie_cols == 4:
            dev_ty = AIEDevice.npu1
    else:
        dev_ty = AIEDevice.npu2

    # These will hold TensorAccessPattern objects that represent the runtime
    # npu_dma_memcpy_nd operations of this design. They are only used if generate_taps is true
    A_taps = []
    B_taps = []
    C_taps = []
    mtk = 512
    mtk_div_k = mtk // k
    @device(dev_ty)
    def device_body():
        A_l2_ty = np.ndarray[(m*n_aie_rows*mtk,), np.dtype[dtype_in]]
        C_l2_ty = np.ndarray[(m * n_aie_rows,), np.dtype[dtype_out]]
        A_l1_ty = np.ndarray[(m* mtk,), np.dtype[dtype_in]]
        B_l1_ty = np.ndarray[(mtk,), np.dtype[dtype_in]]
        C_l1_ty = np.ndarray[(m,), np.dtype[dtype_out]]

        # AIE Core Function declarations
        scalar_suffix = "scalar" if use_scalar else "vectorized"
        zero = external_func(f"zero_{scalar_suffix}_{dtype_out_str}", inputs=[C_l1_ty])
        matvec = external_func(
            f"matvec_{scalar_suffix}_{dtype_in_str}_{dtype_out_str}",
            inputs=[A_l1_ty, B_l1_ty, C_l1_ty],
        )

        # Tile declarations as tile[row][col]
        tiles = [
            [tile(col, row) for col in range(0, n_aie_cols)] for row in range(0, 6)
        ]
        shim_tiles = tiles[0]
        mem_tiles = tiles[1]
        core_tiles = tiles[2:]

        # AIE-array data movement with object fifos
        A_l3l2_fifos = [None] * n_aie_cols
        A_l2l1_fifos = [[None] * n_aie_cols for _ in range(n_aie_rows)]

        B_l3l2_fifos = [None] * n_aie_cols
        B_l2l1_fifos = [None] * n_aie_cols 

        C_l1l2_fifos = [[None] * n_aie_cols for _ in range(n_aie_rows)]
        C_l2l3_fifos = [None] * n_aie_cols

        # Input A
        # L3 -> L2 data movement
        for i in range(n_aie_cols):
            A_l3l2_fifos[i] = object_fifo(
                f"A_L3L2_{i}",
                shim_tiles[i],
                mem_tiles[i],
                fifo_depth,
                A_l2_ty,
                None, #MM2S 
                        #S2MM
                # [
                #     [
                #         (m, k),
                #         (mtk // k, m * k),
                #         (k, 1),
                #     ]
                # ],
            )

        # L2 -> L1 data movement
        for col in range(n_aie_cols):
            for row in range(n_aie_rows):
                A_l2l1_fifos[row][col]= object_fifo(
                        f"AL2L1{row}{col}",
                        mem_tiles[col],
                        core_tiles[row][col],
                        2,
                        A_l1_ty,
                        #MM2S
                        # None,
                        # [
                        #     [   
                        #         (k  // 2, 2),
                        #         (m, k),
                        #         (2, 1),
                        #     ]
                        # ]
                    )
            object_fifo_link(A_l3l2_fifos[col], [A_l2l1_fifos[row][col] for row in range(n_aie_rows)],[],[m*mtk*j for j in range(n_aie_rows)])#
        #C 
        for col in range(n_aie_cols):
            C_l2l3_fifos[col] = object_fifo(
                f"C_L2L3_{col}",
                mem_tiles[col],
                shim_tiles[col],
                fifo_depth,
                C_l2_ty,
            )
            for row in range(n_aie_rows): 
                C_l1l2_fifos[row][col] = object_fifo(
                    f"C_L1L2_{row}_{col}",
                    core_tiles[row][col],
                    mem_tiles[col],
                    fifo_depth,
                    C_l1_ty,
                    []
                )
            object_fifo_link([C_l1l2_fifos[row][col] for row in range(n_aie_rows)], C_l2l3_fifos[col],[m*j for j in range(n_aie_rows)], [])#
        #B
        for col in range(n_aie_cols):
            B_l3l2_fifos[col] = object_fifo(
                f"B_L3L2_{col}",
                shim_tiles[col],
                mem_tiles[col],
                fifo_depth,
                B_l1_ty,
            )
            B_l2l1_fifos[col] = object_fifo(
                f"B_L2L1_{col}",
                mem_tiles[col],
                [core_tiles[j][col] for j in range(n_aie_rows)],
                fifo_depth,
                B_l1_ty,
            )
            object_fifo_link(B_l3l2_fifos[col], B_l2l1_fifos[col])#

        # Set up compute tiles
        for row in range(n_aie_rows):
            for col in range(n_aie_cols):

                # The stack size choice is a workaround explained here:
                # https://github.com/Xilinx/mlir-aie/pull/2391#issuecomment-2967432485
                # In summary, the Peano compiler uses a stack size greater than the default one used by this kernel
                # (default is 0x400, chess' stack size is smaller). This is only necessary for bf16 through bfp16 emulation on npu2.
                # Exceding the stack size leads to wrong results from the kernel, but no error is triggered.
                # Stack usage can be checked as explained here:
                # https://github.com/Xilinx/llvm-aie/issues/487#issuecomment-2969438585
                @core(core_tiles[row][col], f"mv_{m}x{k}.o") #, stack_size=0xD00)
                def core_body():
                    for _ in range_(0xFFFFFFFF):
                        # loop = (
                        #     # range_(n_tiles_per_core)
                        #     # if n_tiles_per_core > 1
                        #     # else 
                        #     range(1)
                        # )  # Workaround for issue #1547
                        # for _ in loop:
                        elem_out = C_l1l2_fifos[row][col].acquire(
                            ObjectFifoPort.Produce, 1
                        )
                        zero(elem_out)

                        for _ in range_(K // mtk):
                            elem_in_a = A_l2l1_fifos[row][col].acquire(
                                ObjectFifoPort.Consume, 1
                            )
                            elem_in_b = B_l2l1_fifos[col].acquire(
                                ObjectFifoPort.Consume, 1
                            )
                            matvec(elem_in_a, elem_in_b, elem_out)
                            A_l2l1_fifos[row][col].release(ObjectFifoPort.Consume, 1)
                            B_l2l1_fifos[col].release(ObjectFifoPort.Consume, 1)

                        C_l1l2_fifos[row][col].release(ObjectFifoPort.Produce, 1)

        # To/from AIE-array data movement
        @runtime_sequence(
            np.ndarray[(M * K,), np.dtype[dtype_in]],
            np.ndarray[(K,), np.dtype[dtype_in]],
            np.ndarray[(M,), np.dtype[dtype_out]],
        )
        def sequence(A, B, C):
            M_div_m_div_n_cols = M // m // n_aie_cols
            C_sz_div_n_cols = M // n_aie_cols
            num_iter = M_div_m_div_n_cols // n_aie_rows // 2
            for j in range(num_iter):
                for pingpong in [0,1]:
                    bd_id_base = 8 * pingpong
                    for col in range(n_aie_cols):
                        npu_dma_memcpy_nd(
                            metadata=B_l3l2_fifos[col],
                            bd_id=bd_id_base + 2,
                            mem=B,
                            sizes=[1, 1, 1, K],
                            strides=[0, 0, 0, 1],
                        )
                        A_base_offset =  j * K * M // num_iter + pingpong * K * M // num_iter // 2
                        A_col_offset = col * K * M // num_iter // 2 // n_aie_cols
                        A_offset = A_base_offset + A_col_offset
                        A_sizes = [1, K//mtk, n_aie_rows * m, mtk]
                        A_strides = [0, mtk, K, 1]
                        npu_dma_memcpy_nd(
                                metadata=A_l3l2_fifos[col],
                                bd_id=bd_id_base + 1,
                                mem=A,
                                offsets=[0, 0, 0, A_offset],
                                sizes=A_sizes,
                                strides=A_strides,
                            )
                        C_base_offset =  j * M // num_iter + pingpong * M // num_iter // 2
                        C_col_offset = col * M // num_iter // 2 // n_aie_cols
                        C_offset = C_base_offset + C_col_offset
                        C_size0 = C_sz_div_n_cols//num_iter//2
                        npu_dma_memcpy_nd(
                            metadata=C_l2l3_fifos[col],
                            bd_id=bd_id_base,
                            mem=C,
                            offsets=[0, 0, 0, C_offset],
                            sizes=[1, 1, 1, C_size0],
                            strides=[0, 0, 0, 1],
                        )
                    if j > 0 or (j == 0 and pingpong > 0):
                        dma_wait(*C_l2l3_fifos)
            dma_wait(*C_l2l3_fifos)

    if generate_taps:
        # If generate_taps is true, return a representation of tensor tiles
        # representing all the npu_dma_memcpy_nd runtime sequence operations per input/ouput tensor.
        return (
            TensorAccessSequence.from_taps(A_taps),
            TensorAccessSequence.from_taps(B_taps),
            TensorAccessSequence.from_taps(C_taps),
        )


if __name__ == "__main__":
    main()
