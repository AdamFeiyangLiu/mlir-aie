module {
  aie.device(npu1_1col) {
    func.func private @zero_bf16(memref<64x64xbf16>)
    func.func private @matmul_bf16_bf16(memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %tile_0_2 = aie.tile(0, 2)
    aie.objectfifo @inA(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memA(%mem_tile_0_1 dimensionsToStream [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>], {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@inA] -> [@memA]([] [])
    aie.objectfifo @inB(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memB(%mem_tile_0_1 dimensionsToStream [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>], {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@inB] -> [@memB]([] [])
    aie.objectfifo @memC(%tile_0_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outC(%mem_tile_0_1 dimensionsToStream [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>], {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memC] -> [@outC]([] [])
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c2048 step %c1_1 {
          %0 = aie.objectfifo.acquire @memC(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @memA(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @memB(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @memA(Consume, 1)
            aie.objectfifo.release @memB(Consume, 1)
          }
          aie.objectfifo.release @memC(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<8388608xbf16>, %arg1: memref<16777216xbf16>, %arg2: memref<8388608xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 0 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][64, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 2 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 262144][64, 64, 64, 64][0, 64, 4096, 1]) {id = 3 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 4 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 524288][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 8 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 524288][64, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 10 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 786432][64, 64, 64, 64][0, 64, 4096, 1]) {id = 11 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 12 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1048576][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 0 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1048576][64, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 2 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1310720][64, 64, 64, 64][0, 64, 4096, 1]) {id = 3 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 4 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1572864][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 8 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1572864][64, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 10 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1835008][64, 64, 64, 64][0, 64, 4096, 1]) {id = 11 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 12 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2097152][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 0 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2097152][64, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 2 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2359296][64, 64, 64, 64][0, 64, 4096, 1]) {id = 3 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 4 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2621440][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 8 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2621440][64, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 10 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2883584][64, 64, 64, 64][0, 64, 4096, 1]) {id = 11 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 12 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3145728][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 0 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3145728][64, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 2 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3407872][64, 64, 64, 64][0, 64, 4096, 1]) {id = 3 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 4 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3670016][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 8 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3670016][64, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 10 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3932160][64, 64, 64, 64][0, 64, 4096, 1]) {id = 11 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 12 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4194304][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 0 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4194304][64, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 2 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4456448][64, 64, 64, 64][0, 64, 4096, 1]) {id = 3 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 4 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4718592][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 8 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4718592][64, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 10 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4980736][64, 64, 64, 64][0, 64, 4096, 1]) {id = 11 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 12 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5242880][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 0 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5242880][64, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 2 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5505024][64, 64, 64, 64][0, 64, 4096, 1]) {id = 3 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 4 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5767168][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 8 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5767168][64, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 10 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6029312][64, 64, 64, 64][0, 64, 4096, 1]) {id = 11 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 12 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6291456][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 0 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6291456][64, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 2 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6553600][64, 64, 64, 64][0, 64, 4096, 1]) {id = 3 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 4 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6815744][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 8 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6815744][64, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 10 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7077888][64, 64, 64, 64][0, 64, 4096, 1]) {id = 11 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 12 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7340032][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 0 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7340032][64, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 2 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7602176][64, 64, 64, 64][0, 64, 4096, 1]) {id = 3 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 4 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7864320][2, 64, 64, 64][262144, 64, 4096, 1]) {id = 8 : i64, metadata = @outC} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7864320][64, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 10 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8126464][64, 64, 64, 64][0, 64, 4096, 1]) {id = 11 : i64, metadata = @inA} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 64, 64][64, 262144, 4096, 1]) {id = 12 : i64, metadata = @inB} : memref<16777216xbf16>
      aiex.npu.dma_wait {symbol = @outC}
      aiex.npu.dma_wait {symbol = @outC}
    }
  }
}

