"builtin.module"() ({
  "aie.device"() <{device = 8 : i32}> ({
    "func.func"() <{function_type = (memref<32xi32>) -> (), sym_name = "zero_scalar_i32", sym_visibility = "private"}> ({
    }) : () -> ()
    "func.func"() <{function_type = (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> (), sym_name = "matvec_scalar_i16_i32", sym_visibility = "private"}> ({
    }) : () -> ()
    %0 = "aie.tile"() <{col = 0 : i32, row = 0 : i32}> : () -> index
    %1 = "aie.tile"() <{col = 1 : i32, row = 0 : i32}> : () -> index
    %2 = "aie.tile"() <{col = 2 : i32, row = 0 : i32}> : () -> index
    %3 = "aie.tile"() <{col = 3 : i32, row = 0 : i32}> : () -> index
    %4 = "aie.tile"() <{col = 0 : i32, row = 1 : i32}> : () -> index
    %5 = "aie.tile"() <{col = 1 : i32, row = 1 : i32}> : () -> index
    %6 = "aie.tile"() <{col = 2 : i32, row = 1 : i32}> : () -> index
    %7 = "aie.tile"() <{col = 3 : i32, row = 1 : i32}> : () -> index
    %8 = "aie.tile"() <{col = 0 : i32, row = 2 : i32}> : () -> index
    %9 = "aie.tile"() <{col = 1 : i32, row = 2 : i32}> : () -> index
    %10 = "aie.tile"() <{col = 2 : i32, row = 2 : i32}> : () -> index
    %11 = "aie.tile"() <{col = 3 : i32, row = 2 : i32}> : () -> index
    "aie.objectfifo"(%0, %4) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<1024xi16>>, plio = false, sym_name = "memA0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%4, %8) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x32xi16>>, plio = false, sym_name = "inA0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@memA0], fifoOuts = [@inA0], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%8, %0) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32xi32>>, plio = false, sym_name = "outC0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%1, %5) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<1024xi16>>, plio = false, sym_name = "memA1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%5, %9) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x32xi16>>, plio = false, sym_name = "inA1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@memA1], fifoOuts = [@inA1], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%9, %1) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32xi32>>, plio = false, sym_name = "outC1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%2, %6) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<1024xi16>>, plio = false, sym_name = "memA2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%6, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x32xi16>>, plio = false, sym_name = "inA2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@memA2], fifoOuts = [@inA2], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%10, %2) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32xi32>>, plio = false, sym_name = "outC2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%3, %7) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<1024xi16>>, plio = false, sym_name = "memA3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%7, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x32xi16>>, plio = false, sym_name = "inA3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@memA3], fifoOuts = [@inA3], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%11, %3) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32xi32>>, plio = false, sym_name = "outC3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%1, %8, %9, %10, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32xi16>>, plio = false, sym_name = "inB", via_DMA = false}> : (index, index, index, index, index) -> ()
    %12 = "aie.core"(%8) <{link_with = "mv_32x32.o", stack_size = 1024 : i32}> ({
      %52 = "arith.constant"() <{value = 0 : index}> : () -> index
      %53 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %54 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%52, %53, %54) ({
      ^bb0(%arg9: index):
        %55 = "aie.objectfifo.acquire"() <{objFifo_name = @outC0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32xi32>>
        %56 = "aie.objectfifo.subview.access"(%55) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32xi32>>) -> memref<32xi32>
        "func.call"(%56) <{callee = @zero_scalar_i32}> : (memref<32xi32>) -> ()
        %57 = "arith.constant"() <{value = 0 : index}> : () -> index
        %58 = "arith.constant"() <{value = 128 : index}> : () -> index
        %59 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%57, %58, %59) ({
        ^bb0(%arg10: index):
          %60 = "aie.objectfifo.acquire"() <{objFifo_name = @inA0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x32xi16>>
          %61 = "aie.objectfifo.subview.access"(%60) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x32xi16>>) -> memref<32x32xi16>
          %62 = "aie.objectfifo.acquire"() <{objFifo_name = @inB, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32xi16>>
          %63 = "aie.objectfifo.subview.access"(%62) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32xi16>>) -> memref<32xi16>
          "func.call"(%61, %63, %56) <{callee = @matvec_scalar_i16_i32}> : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @inA0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @inB, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @outC0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %13 = "aie.core"(%9) <{link_with = "mv_32x32.o", stack_size = 1024 : i32}> ({
      %40 = "arith.constant"() <{value = 0 : index}> : () -> index
      %41 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %42 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%40, %41, %42) ({
      ^bb0(%arg7: index):
        %43 = "aie.objectfifo.acquire"() <{objFifo_name = @outC1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32xi32>>
        %44 = "aie.objectfifo.subview.access"(%43) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32xi32>>) -> memref<32xi32>
        "func.call"(%44) <{callee = @zero_scalar_i32}> : (memref<32xi32>) -> ()
        %45 = "arith.constant"() <{value = 0 : index}> : () -> index
        %46 = "arith.constant"() <{value = 128 : index}> : () -> index
        %47 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%45, %46, %47) ({
        ^bb0(%arg8: index):
          %48 = "aie.objectfifo.acquire"() <{objFifo_name = @inA1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x32xi16>>
          %49 = "aie.objectfifo.subview.access"(%48) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x32xi16>>) -> memref<32x32xi16>
          %50 = "aie.objectfifo.acquire"() <{objFifo_name = @inB, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32xi16>>
          %51 = "aie.objectfifo.subview.access"(%50) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32xi16>>) -> memref<32xi16>
          "func.call"(%49, %51, %44) <{callee = @matvec_scalar_i16_i32}> : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @inA1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @inB, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @outC1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %14 = "aie.core"(%10) <{link_with = "mv_32x32.o", stack_size = 1024 : i32}> ({
      %28 = "arith.constant"() <{value = 0 : index}> : () -> index
      %29 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %30 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%28, %29, %30) ({
      ^bb0(%arg5: index):
        %31 = "aie.objectfifo.acquire"() <{objFifo_name = @outC2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32xi32>>
        %32 = "aie.objectfifo.subview.access"(%31) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32xi32>>) -> memref<32xi32>
        "func.call"(%32) <{callee = @zero_scalar_i32}> : (memref<32xi32>) -> ()
        %33 = "arith.constant"() <{value = 0 : index}> : () -> index
        %34 = "arith.constant"() <{value = 128 : index}> : () -> index
        %35 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%33, %34, %35) ({
        ^bb0(%arg6: index):
          %36 = "aie.objectfifo.acquire"() <{objFifo_name = @inA2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x32xi16>>
          %37 = "aie.objectfifo.subview.access"(%36) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x32xi16>>) -> memref<32x32xi16>
          %38 = "aie.objectfifo.acquire"() <{objFifo_name = @inB, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32xi16>>
          %39 = "aie.objectfifo.subview.access"(%38) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32xi16>>) -> memref<32xi16>
          "func.call"(%37, %39, %32) <{callee = @matvec_scalar_i16_i32}> : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @inA2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @inB, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @outC2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %15 = "aie.core"(%11) <{link_with = "mv_32x32.o", stack_size = 1024 : i32}> ({
      %16 = "arith.constant"() <{value = 0 : index}> : () -> index
      %17 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %18 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%16, %17, %18) ({
      ^bb0(%arg3: index):
        %19 = "aie.objectfifo.acquire"() <{objFifo_name = @outC3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32xi32>>
        %20 = "aie.objectfifo.subview.access"(%19) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32xi32>>) -> memref<32xi32>
        "func.call"(%20) <{callee = @zero_scalar_i32}> : (memref<32xi32>) -> ()
        %21 = "arith.constant"() <{value = 0 : index}> : () -> index
        %22 = "arith.constant"() <{value = 128 : index}> : () -> index
        %23 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%21, %22, %23) ({
        ^bb0(%arg4: index):
          %24 = "aie.objectfifo.acquire"() <{objFifo_name = @inA3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x32xi16>>
          %25 = "aie.objectfifo.subview.access"(%24) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x32xi16>>) -> memref<32x32xi16>
          %26 = "aie.objectfifo.acquire"() <{objFifo_name = @inB, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32xi16>>
          %27 = "aie.objectfifo.subview.access"(%26) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32xi16>>) -> memref<32xi16>
          "func.call"(%25, %27, %20) <{callee = @matvec_scalar_i16_i32}> : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @inA3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @inB, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @outC3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    "aiex.runtime_sequence"() <{sym_name = "sequence"}> ({
    ^bb0(%arg0: memref<58720256xi16>, %arg1: memref<4096xi16>, %arg2: memref<14336xi32>):
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 2 : i64, metadata = @inB, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 112, 1, 1, 4096>, static_strides = array<i64: 0, 0, 0, 1>, x = 0 : i64, y = 0 : i64}> : (memref<4096xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @memA0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 112, 128, 32, 32>, static_strides = array<i64: 131072, 32, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @outC0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 1, 1, 3584>, static_strides = array<i64: 0, 0, 0, 1>, x = 0 : i64, y = 0 : i64}> : (memref<14336xi32>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @memA1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 14680064>, static_sizes = array<i64: 112, 128, 32, 32>, static_strides = array<i64: 131072, 32, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @outC1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 3584>, static_sizes = array<i64: 1, 1, 1, 3584>, static_strides = array<i64: 0, 0, 0, 1>, x = 0 : i64, y = 0 : i64}> : (memref<14336xi32>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @memA2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 29360128>, static_sizes = array<i64: 112, 128, 32, 32>, static_strides = array<i64: 131072, 32, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @outC2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 7168>, static_sizes = array<i64: 1, 1, 1, 3584>, static_strides = array<i64: 0, 0, 0, 1>, x = 0 : i64, y = 0 : i64}> : (memref<14336xi32>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @memA3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 44040192>, static_sizes = array<i64: 112, 128, 32, 32>, static_strides = array<i64: 131072, 32, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @outC3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 10752>, static_sizes = array<i64: 1, 1, 1, 3584>, static_strides = array<i64: 0, 0, 0, 1>, x = 0 : i64, y = 0 : i64}> : (memref<14336xi32>) -> ()
      "aiex.npu.dma_wait"() <{symbol = @outC0}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @outC1}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @outC2}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @outC3}> : () -> ()
    }) : () -> ()
    "aie.end"() : () -> ()
  }) : () -> ()
}) : () -> ()

