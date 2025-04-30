"builtin.module"() ({
  "aie.device"() <{device = 8 : i32}> ({
    "func.func"() <{function_type = (memref<64x64xi16>) -> (), sym_name = "zero_i16", sym_visibility = "private"}> ({
    }) : () -> ()
    "func.func"() <{function_type = (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> (), sym_name = "matmul_i16_i16", sym_visibility = "private"}> ({
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
    %12 = "aie.tile"() <{col = 0 : i32, row = 3 : i32}> : () -> index
    %13 = "aie.tile"() <{col = 1 : i32, row = 3 : i32}> : () -> index
    %14 = "aie.tile"() <{col = 2 : i32, row = 3 : i32}> : () -> index
    %15 = "aie.tile"() <{col = 3 : i32, row = 3 : i32}> : () -> index
    %16 = "aie.tile"() <{col = 0 : i32, row = 4 : i32}> : () -> index
    %17 = "aie.tile"() <{col = 1 : i32, row = 4 : i32}> : () -> index
    %18 = "aie.tile"() <{col = 2 : i32, row = 4 : i32}> : () -> index
    %19 = "aie.tile"() <{col = 3 : i32, row = 4 : i32}> : () -> index
    %20 = "aie.tile"() <{col = 0 : i32, row = 5 : i32}> : () -> index
    %21 = "aie.tile"() <{col = 1 : i32, row = 5 : i32}> : () -> index
    %22 = "aie.tile"() <{col = 2 : i32, row = 5 : i32}> : () -> index
    %23 = "aie.tile"() <{col = 3 : i32, row = 5 : i32}> : () -> index
    "aie.objectfifo"(%4, %8, %9, %10, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "A_L2L1_0", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo"(%5, %12, %13, %14, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "A_L2L1_1", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo"(%6, %16, %17, %18, %19) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "A_L2L1_2", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo"(%7, %20, %21, %22, %23) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "A_L2L1_3", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo"(%0, %4) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<4096xi16>>, plio = false, sym_name = "A_L3L2_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_0], fifoOuts = [@A_L2L1_0], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%1, %5) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<4096xi16>>, plio = false, sym_name = "A_L3L2_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_1], fifoOuts = [@A_L2L1_1], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%2, %6) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<4096xi16>>, plio = false, sym_name = "A_L3L2_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_2], fifoOuts = [@A_L2L1_2], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%3, %7) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<4096xi16>>, plio = false, sym_name = "A_L3L2_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_3], fifoOuts = [@A_L2L1_3], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%0, %4) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<4096xi16>>, plio = false, sym_name = "B_L3L2_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%4, %8, %12, %16, %20) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "B_L2L1_0", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_0], fifoOuts = [@B_L2L1_0], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%1, %5) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<4096xi16>>, plio = false, sym_name = "B_L3L2_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%5, %9, %13, %17, %21) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "B_L2L1_1", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_1], fifoOuts = [@B_L2L1_1], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%2, %6) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<4096xi16>>, plio = false, sym_name = "B_L3L2_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%6, %10, %14, %18, %22) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "B_L2L1_2", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_2], fifoOuts = [@B_L2L1_2], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%3, %7) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<4096xi16>>, plio = false, sym_name = "B_L3L2_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%7, %11, %15, %19, %23) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "B_L2L1_3", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_3], fifoOuts = [@B_L2L1_3], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%8, %4) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_0_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%12, %4) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_0_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%16, %4) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_0_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%20, %4) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_0_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%4, %0) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<16384xi16>>, plio = false, sym_name = "C_L2L3_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_0_0, @C_L1L2_0_1, @C_L1L2_0_2, @C_L1L2_0_3], fifoOuts = [@C_L2L3_0], src_offsets = [0, 4096, 8192, 12288]}> : () -> ()
    "aie.objectfifo"(%9, %5) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_1_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%13, %5) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_1_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%17, %5) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_1_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%21, %5) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_1_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%5, %1) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<16384xi16>>, plio = false, sym_name = "C_L2L3_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_1_0, @C_L1L2_1_1, @C_L1L2_1_2, @C_L1L2_1_3], fifoOuts = [@C_L2L3_1], src_offsets = [0, 4096, 8192, 12288]}> : () -> ()
    "aie.objectfifo"(%10, %6) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_2_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%14, %6) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_2_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%18, %6) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_2_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%22, %6) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_2_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%6, %2) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<16384xi16>>, plio = false, sym_name = "C_L2L3_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_2_0, @C_L1L2_2_1, @C_L1L2_2_2, @C_L1L2_2_3], fifoOuts = [@C_L2L3_2], src_offsets = [0, 4096, 8192, 12288]}> : () -> ()
    "aie.objectfifo"(%11, %7) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_3_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%15, %7) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_3_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%19, %7) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_3_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%23, %7) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<64x64xi16>>, plio = false, sym_name = "C_L1L2_3_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%7, %3) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[]>, dimensionsToStream = #aie<bd_dim_layout_array[<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<16384xi16>>, plio = false, sym_name = "C_L2L3_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_3_0, @C_L1L2_3_1, @C_L1L2_3_2, @C_L1L2_3_3], fifoOuts = [@C_L2L3_3], src_offsets = [0, 4096, 8192, 12288]}> : () -> ()
    %24 = "aie.core"(%8) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %265 = "arith.constant"() <{value = 0 : index}> : () -> index
      %266 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %267 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%265, %266, %267) ({
      ^bb0(%arg48: index):
        %268 = "arith.constant"() <{value = 0 : index}> : () -> index
        %269 = "arith.constant"() <{value = 448 : index}> : () -> index
        %270 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%268, %269, %270) ({
        ^bb0(%arg49: index):
          %271 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %272 = "aie.objectfifo.subview.access"(%271) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%272) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %273 = "arith.constant"() <{value = 0 : index}> : () -> index
          %274 = "arith.constant"() <{value = 64 : index}> : () -> index
          %275 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%273, %274, %275) ({
          ^bb0(%arg50: index):
            %276 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %277 = "aie.objectfifo.subview.access"(%276) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %278 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %279 = "aie.objectfifo.subview.access"(%278) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%277, %279, %272) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %25 = "aie.core"(%9) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %250 = "arith.constant"() <{value = 0 : index}> : () -> index
      %251 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %252 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%250, %251, %252) ({
      ^bb0(%arg45: index):
        %253 = "arith.constant"() <{value = 0 : index}> : () -> index
        %254 = "arith.constant"() <{value = 448 : index}> : () -> index
        %255 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%253, %254, %255) ({
        ^bb0(%arg46: index):
          %256 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %257 = "aie.objectfifo.subview.access"(%256) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%257) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %258 = "arith.constant"() <{value = 0 : index}> : () -> index
          %259 = "arith.constant"() <{value = 64 : index}> : () -> index
          %260 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%258, %259, %260) ({
          ^bb0(%arg47: index):
            %261 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %262 = "aie.objectfifo.subview.access"(%261) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %263 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %264 = "aie.objectfifo.subview.access"(%263) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%262, %264, %257) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %26 = "aie.core"(%10) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %235 = "arith.constant"() <{value = 0 : index}> : () -> index
      %236 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %237 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%235, %236, %237) ({
      ^bb0(%arg42: index):
        %238 = "arith.constant"() <{value = 0 : index}> : () -> index
        %239 = "arith.constant"() <{value = 448 : index}> : () -> index
        %240 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%238, %239, %240) ({
        ^bb0(%arg43: index):
          %241 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %242 = "aie.objectfifo.subview.access"(%241) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%242) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %243 = "arith.constant"() <{value = 0 : index}> : () -> index
          %244 = "arith.constant"() <{value = 64 : index}> : () -> index
          %245 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%243, %244, %245) ({
          ^bb0(%arg44: index):
            %246 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %247 = "aie.objectfifo.subview.access"(%246) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %248 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %249 = "aie.objectfifo.subview.access"(%248) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%247, %249, %242) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %27 = "aie.core"(%11) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %220 = "arith.constant"() <{value = 0 : index}> : () -> index
      %221 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %222 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%220, %221, %222) ({
      ^bb0(%arg39: index):
        %223 = "arith.constant"() <{value = 0 : index}> : () -> index
        %224 = "arith.constant"() <{value = 448 : index}> : () -> index
        %225 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%223, %224, %225) ({
        ^bb0(%arg40: index):
          %226 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %227 = "aie.objectfifo.subview.access"(%226) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%227) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %228 = "arith.constant"() <{value = 0 : index}> : () -> index
          %229 = "arith.constant"() <{value = 64 : index}> : () -> index
          %230 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%228, %229, %230) ({
          ^bb0(%arg41: index):
            %231 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %232 = "aie.objectfifo.subview.access"(%231) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %233 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %234 = "aie.objectfifo.subview.access"(%233) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%232, %234, %227) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %28 = "aie.core"(%12) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %205 = "arith.constant"() <{value = 0 : index}> : () -> index
      %206 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %207 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%205, %206, %207) ({
      ^bb0(%arg36: index):
        %208 = "arith.constant"() <{value = 0 : index}> : () -> index
        %209 = "arith.constant"() <{value = 448 : index}> : () -> index
        %210 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%208, %209, %210) ({
        ^bb0(%arg37: index):
          %211 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %212 = "aie.objectfifo.subview.access"(%211) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%212) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %213 = "arith.constant"() <{value = 0 : index}> : () -> index
          %214 = "arith.constant"() <{value = 64 : index}> : () -> index
          %215 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%213, %214, %215) ({
          ^bb0(%arg38: index):
            %216 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %217 = "aie.objectfifo.subview.access"(%216) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %218 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %219 = "aie.objectfifo.subview.access"(%218) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%217, %219, %212) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %29 = "aie.core"(%13) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %190 = "arith.constant"() <{value = 0 : index}> : () -> index
      %191 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %192 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%190, %191, %192) ({
      ^bb0(%arg33: index):
        %193 = "arith.constant"() <{value = 0 : index}> : () -> index
        %194 = "arith.constant"() <{value = 448 : index}> : () -> index
        %195 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%193, %194, %195) ({
        ^bb0(%arg34: index):
          %196 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %197 = "aie.objectfifo.subview.access"(%196) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%197) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %198 = "arith.constant"() <{value = 0 : index}> : () -> index
          %199 = "arith.constant"() <{value = 64 : index}> : () -> index
          %200 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%198, %199, %200) ({
          ^bb0(%arg35: index):
            %201 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %202 = "aie.objectfifo.subview.access"(%201) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %203 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %204 = "aie.objectfifo.subview.access"(%203) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%202, %204, %197) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %30 = "aie.core"(%14) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %175 = "arith.constant"() <{value = 0 : index}> : () -> index
      %176 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %177 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%175, %176, %177) ({
      ^bb0(%arg30: index):
        %178 = "arith.constant"() <{value = 0 : index}> : () -> index
        %179 = "arith.constant"() <{value = 448 : index}> : () -> index
        %180 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%178, %179, %180) ({
        ^bb0(%arg31: index):
          %181 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %182 = "aie.objectfifo.subview.access"(%181) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%182) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %183 = "arith.constant"() <{value = 0 : index}> : () -> index
          %184 = "arith.constant"() <{value = 64 : index}> : () -> index
          %185 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%183, %184, %185) ({
          ^bb0(%arg32: index):
            %186 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %187 = "aie.objectfifo.subview.access"(%186) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %188 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %189 = "aie.objectfifo.subview.access"(%188) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%187, %189, %182) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %31 = "aie.core"(%15) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %160 = "arith.constant"() <{value = 0 : index}> : () -> index
      %161 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %162 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%160, %161, %162) ({
      ^bb0(%arg27: index):
        %163 = "arith.constant"() <{value = 0 : index}> : () -> index
        %164 = "arith.constant"() <{value = 448 : index}> : () -> index
        %165 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%163, %164, %165) ({
        ^bb0(%arg28: index):
          %166 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %167 = "aie.objectfifo.subview.access"(%166) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%167) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %168 = "arith.constant"() <{value = 0 : index}> : () -> index
          %169 = "arith.constant"() <{value = 64 : index}> : () -> index
          %170 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%168, %169, %170) ({
          ^bb0(%arg29: index):
            %171 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %172 = "aie.objectfifo.subview.access"(%171) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %173 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %174 = "aie.objectfifo.subview.access"(%173) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%172, %174, %167) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %32 = "aie.core"(%16) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %145 = "arith.constant"() <{value = 0 : index}> : () -> index
      %146 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %147 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%145, %146, %147) ({
      ^bb0(%arg24: index):
        %148 = "arith.constant"() <{value = 0 : index}> : () -> index
        %149 = "arith.constant"() <{value = 448 : index}> : () -> index
        %150 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%148, %149, %150) ({
        ^bb0(%arg25: index):
          %151 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %152 = "aie.objectfifo.subview.access"(%151) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%152) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %153 = "arith.constant"() <{value = 0 : index}> : () -> index
          %154 = "arith.constant"() <{value = 64 : index}> : () -> index
          %155 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%153, %154, %155) ({
          ^bb0(%arg26: index):
            %156 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %157 = "aie.objectfifo.subview.access"(%156) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %158 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %159 = "aie.objectfifo.subview.access"(%158) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%157, %159, %152) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %33 = "aie.core"(%17) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %130 = "arith.constant"() <{value = 0 : index}> : () -> index
      %131 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %132 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%130, %131, %132) ({
      ^bb0(%arg21: index):
        %133 = "arith.constant"() <{value = 0 : index}> : () -> index
        %134 = "arith.constant"() <{value = 448 : index}> : () -> index
        %135 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%133, %134, %135) ({
        ^bb0(%arg22: index):
          %136 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %137 = "aie.objectfifo.subview.access"(%136) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%137) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %138 = "arith.constant"() <{value = 0 : index}> : () -> index
          %139 = "arith.constant"() <{value = 64 : index}> : () -> index
          %140 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%138, %139, %140) ({
          ^bb0(%arg23: index):
            %141 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %142 = "aie.objectfifo.subview.access"(%141) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %143 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %144 = "aie.objectfifo.subview.access"(%143) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%142, %144, %137) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %34 = "aie.core"(%18) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %115 = "arith.constant"() <{value = 0 : index}> : () -> index
      %116 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %117 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%115, %116, %117) ({
      ^bb0(%arg18: index):
        %118 = "arith.constant"() <{value = 0 : index}> : () -> index
        %119 = "arith.constant"() <{value = 448 : index}> : () -> index
        %120 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%118, %119, %120) ({
        ^bb0(%arg19: index):
          %121 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %122 = "aie.objectfifo.subview.access"(%121) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%122) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %123 = "arith.constant"() <{value = 0 : index}> : () -> index
          %124 = "arith.constant"() <{value = 64 : index}> : () -> index
          %125 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%123, %124, %125) ({
          ^bb0(%arg20: index):
            %126 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %127 = "aie.objectfifo.subview.access"(%126) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %128 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %129 = "aie.objectfifo.subview.access"(%128) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%127, %129, %122) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %35 = "aie.core"(%19) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %100 = "arith.constant"() <{value = 0 : index}> : () -> index
      %101 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %102 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%100, %101, %102) ({
      ^bb0(%arg15: index):
        %103 = "arith.constant"() <{value = 0 : index}> : () -> index
        %104 = "arith.constant"() <{value = 448 : index}> : () -> index
        %105 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%103, %104, %105) ({
        ^bb0(%arg16: index):
          %106 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %107 = "aie.objectfifo.subview.access"(%106) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%107) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %108 = "arith.constant"() <{value = 0 : index}> : () -> index
          %109 = "arith.constant"() <{value = 64 : index}> : () -> index
          %110 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%108, %109, %110) ({
          ^bb0(%arg17: index):
            %111 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %112 = "aie.objectfifo.subview.access"(%111) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %113 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %114 = "aie.objectfifo.subview.access"(%113) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%112, %114, %107) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %36 = "aie.core"(%20) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %85 = "arith.constant"() <{value = 0 : index}> : () -> index
      %86 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %87 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%85, %86, %87) ({
      ^bb0(%arg12: index):
        %88 = "arith.constant"() <{value = 0 : index}> : () -> index
        %89 = "arith.constant"() <{value = 448 : index}> : () -> index
        %90 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%88, %89, %90) ({
        ^bb0(%arg13: index):
          %91 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %92 = "aie.objectfifo.subview.access"(%91) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%92) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %93 = "arith.constant"() <{value = 0 : index}> : () -> index
          %94 = "arith.constant"() <{value = 64 : index}> : () -> index
          %95 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%93, %94, %95) ({
          ^bb0(%arg14: index):
            %96 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %97 = "aie.objectfifo.subview.access"(%96) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %98 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %99 = "aie.objectfifo.subview.access"(%98) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%97, %99, %92) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %37 = "aie.core"(%21) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %70 = "arith.constant"() <{value = 0 : index}> : () -> index
      %71 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %72 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%70, %71, %72) ({
      ^bb0(%arg9: index):
        %73 = "arith.constant"() <{value = 0 : index}> : () -> index
        %74 = "arith.constant"() <{value = 448 : index}> : () -> index
        %75 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%73, %74, %75) ({
        ^bb0(%arg10: index):
          %76 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %77 = "aie.objectfifo.subview.access"(%76) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%77) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %78 = "arith.constant"() <{value = 0 : index}> : () -> index
          %79 = "arith.constant"() <{value = 64 : index}> : () -> index
          %80 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%78, %79, %80) ({
          ^bb0(%arg11: index):
            %81 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %82 = "aie.objectfifo.subview.access"(%81) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %83 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %84 = "aie.objectfifo.subview.access"(%83) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%82, %84, %77) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %38 = "aie.core"(%22) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %55 = "arith.constant"() <{value = 0 : index}> : () -> index
      %56 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %57 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%55, %56, %57) ({
      ^bb0(%arg6: index):
        %58 = "arith.constant"() <{value = 0 : index}> : () -> index
        %59 = "arith.constant"() <{value = 448 : index}> : () -> index
        %60 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%58, %59, %60) ({
        ^bb0(%arg7: index):
          %61 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %62 = "aie.objectfifo.subview.access"(%61) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%62) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %63 = "arith.constant"() <{value = 0 : index}> : () -> index
          %64 = "arith.constant"() <{value = 64 : index}> : () -> index
          %65 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%63, %64, %65) ({
          ^bb0(%arg8: index):
            %66 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %67 = "aie.objectfifo.subview.access"(%66) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %68 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %69 = "aie.objectfifo.subview.access"(%68) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%67, %69, %62) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %39 = "aie.core"(%23) <{link_with = "mm_64x64x64.o", stack_size = 1024 : i32}> ({
      %40 = "arith.constant"() <{value = 0 : index}> : () -> index
      %41 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %42 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%40, %41, %42) ({
      ^bb0(%arg3: index):
        %43 = "arith.constant"() <{value = 0 : index}> : () -> index
        %44 = "arith.constant"() <{value = 448 : index}> : () -> index
        %45 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%43, %44, %45) ({
        ^bb0(%arg4: index):
          %46 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
          %47 = "aie.objectfifo.subview.access"(%46) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
          "func.call"(%47) <{callee = @zero_i16}> : (memref<64x64xi16>) -> ()
          %48 = "arith.constant"() <{value = 0 : index}> : () -> index
          %49 = "arith.constant"() <{value = 64 : index}> : () -> index
          %50 = "arith.constant"() <{value = 1 : index}> : () -> index
          "scf.for"(%48, %49, %50) ({
          ^bb0(%arg5: index):
            %51 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %52 = "aie.objectfifo.subview.access"(%51) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            %53 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<64x64xi16>>
            %54 = "aie.objectfifo.subview.access"(%53) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<64x64xi16>>) -> memref<64x64xi16>
            "func.call"(%52, %54, %47) <{callee = @matmul_i16_i16}> : (memref<64x64xi16>, memref<64x64xi16>, memref<64x64xi16>) -> ()
            "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
            "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    "aiex.runtime_sequence"() <{sym_name = "sequence"}> ({
    ^bb0(%arg0: memref<8388608xi16>, %arg1: memref<58720256xi16>, %arg2: memref<29360128xi16>):
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @C_L2L3_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @A_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 2 : i64, metadata = @B_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 3 : i64, metadata = @A_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 1048576>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 4 : i64, metadata = @B_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @C_L2L3_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 64>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @A_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 262144>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 2 : i64, metadata = @B_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 64>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 3 : i64, metadata = @A_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 1310720>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 4 : i64, metadata = @B_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 64>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @C_L2L3_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 128>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @A_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 524288>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 2 : i64, metadata = @B_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 128>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 3 : i64, metadata = @A_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 1572864>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 4 : i64, metadata = @B_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 128>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @C_L2L3_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 192>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @A_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 786432>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 2 : i64, metadata = @B_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 192>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 3 : i64, metadata = @A_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 1835008>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 4 : i64, metadata = @B_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 192>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 8 : i64, metadata = @C_L2L3_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 7340032>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 9 : i64, metadata = @A_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 2097152>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 10 : i64, metadata = @B_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 11 : i64, metadata = @A_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 3145728>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 12 : i64, metadata = @B_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 8 : i64, metadata = @C_L2L3_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 7340096>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 9 : i64, metadata = @A_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 2359296>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 10 : i64, metadata = @B_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 64>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 11 : i64, metadata = @A_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 3407872>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 12 : i64, metadata = @B_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 64>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 8 : i64, metadata = @C_L2L3_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 7340160>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 9 : i64, metadata = @A_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 2621440>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 10 : i64, metadata = @B_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 128>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 11 : i64, metadata = @A_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 3670016>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 12 : i64, metadata = @B_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 128>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 8 : i64, metadata = @C_L2L3_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 7340224>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 9 : i64, metadata = @A_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 2883584>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 10 : i64, metadata = @B_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 192>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 11 : i64, metadata = @A_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 3932160>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 12 : i64, metadata = @B_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 192>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_0}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_1}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_2}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_3}> : () -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @C_L2L3_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 14680064>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @A_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 4194304>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 2 : i64, metadata = @B_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 3 : i64, metadata = @A_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 5242880>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 4 : i64, metadata = @B_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @C_L2L3_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 14680128>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @A_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 4456448>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 2 : i64, metadata = @B_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 64>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 3 : i64, metadata = @A_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 5505024>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 4 : i64, metadata = @B_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 64>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @C_L2L3_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 14680192>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @A_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 4718592>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 2 : i64, metadata = @B_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 128>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 3 : i64, metadata = @A_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 5767168>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 4 : i64, metadata = @B_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 128>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 0 : i64, metadata = @C_L2L3_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 14680256>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 1 : i64, metadata = @A_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 4980736>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 2 : i64, metadata = @B_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 192>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 3 : i64, metadata = @A_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 6029312>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 4 : i64, metadata = @B_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 192>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_0}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_1}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_2}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_3}> : () -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 8 : i64, metadata = @C_L2L3_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 22020096>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 9 : i64, metadata = @A_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 6291456>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 10 : i64, metadata = @B_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 11 : i64, metadata = @A_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 7340032>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 12 : i64, metadata = @B_L3L2_0, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 8 : i64, metadata = @C_L2L3_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 22020160>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 9 : i64, metadata = @A_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 6553600>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 10 : i64, metadata = @B_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 64>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 11 : i64, metadata = @A_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 7602176>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 12 : i64, metadata = @B_L3L2_1, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 64>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 8 : i64, metadata = @C_L2L3_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 22020224>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 9 : i64, metadata = @A_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 6815744>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 10 : i64, metadata = @B_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 128>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 11 : i64, metadata = @A_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 7864320>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 12 : i64, metadata = @B_L3L2_2, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 128>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg2) <{id = 8 : i64, metadata = @C_L2L3_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 22020288>, static_sizes = array<i64: 2, 56, 256, 64>, static_strides = array<i64: 3670016, 256, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<29360128xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 9 : i64, metadata = @A_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 7077888>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 10 : i64, metadata = @B_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 192>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg0) <{id = 11 : i64, metadata = @A_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 8126464>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 0, 64, 4096, 1>, x = 0 : i64, y = 0 : i64}> : (memref<8388608xi16>) -> ()
      "aiex.npu.dma_memcpy_nd"(%arg1) <{id = 12 : i64, metadata = @B_L3L2_3, operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 192>, static_sizes = array<i64: 56, 64, 64, 64>, static_strides = array<i64: 256, 917504, 14336, 1>, x = 0 : i64, y = 0 : i64}> : (memref<58720256xi16>) -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_0}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_1}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_2}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_3}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_0}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_1}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_2}> : () -> ()
      "aiex.npu.dma_wait"() <{symbol = @C_L2L3_3}> : () -> ()
    }) : () -> ()
    "aie.end"() : () -> ()
  }) : () -> ()
}) : () -> ()

