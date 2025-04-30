module {
  aie.device(npu1_4col) {
    func.func private @zero_scalar_i32(memref<32xi32>)
    func.func private @matvec_scalar_i16_i32(memref<32x32xi16>, memref<32xi16>, memref<32xi32>)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %shim_noc_tile_2_0 = aie.tile(2, 0)
    %shim_noc_tile_3_0 = aie.tile(3, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %mem_tile_1_1 = aie.tile(1, 1)
    %mem_tile_2_1 = aie.tile(2, 1)
    %mem_tile_3_1 = aie.tile(3, 1)
    %tile_0_2 = aie.tile(0, 2)
    %tile_1_2 = aie.tile(1, 2)
    %tile_2_2 = aie.tile(2, 2)
    %tile_3_2 = aie.tile(3, 2)
    aie.objectfifo @memA0(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<1024xi16>> 
    aie.objectfifo @inA0(%mem_tile_0_1, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo.link [@memA0] -> [@inA0]([] [])
    aie.objectfifo @outC0(%tile_0_2, {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<32xi32>> 
    aie.objectfifo @memA1(%shim_noc_tile_1_0, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<1024xi16>> 
    aie.objectfifo @inA1(%mem_tile_1_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo.link [@memA1] -> [@inA1]([] [])
    aie.objectfifo @outC1(%tile_1_2, {%shim_noc_tile_1_0}, 2 : i32) : !aie.objectfifo<memref<32xi32>> 
    aie.objectfifo @inB(%shim_noc_tile_1_0, {%tile_0_2, %tile_1_2}, 2 : i32) : !aie.objectfifo<memref<32xi16>> 
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @outC0(Produce, 1) : !aie.objectfifosubview<memref<32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32xi32>> -> memref<32xi32>
        func.call @zero_scalar_i32(%1) : (memref<32xi32>) -> ()
        %c0_0 = arith.constant 0 : index
        %c128 = arith.constant 128 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c128 step %c1_1 {
          %2 = aie.objectfifo.acquire @inA0(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
          %4 = aie.objectfifo.acquire @inB(Consume, 1) : !aie.objectfifosubview<memref<32xi16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32xi16>> -> memref<32xi16>
          func.call @matvec_scalar_i16_i32(%3, %5, %1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
          aie.objectfifo.release @inA0(Consume, 1)
          aie.objectfifo.release @inB(Consume, 1)
        }
        aie.objectfifo.release @outC0(Produce, 1)
      }
      aie.end
    } {link_with = "mv_32x32.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @outC1(Produce, 1) : !aie.objectfifosubview<memref<32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32xi32>> -> memref<32xi32>
        func.call @zero_scalar_i32(%1) : (memref<32xi32>) -> ()
        %c0_0 = arith.constant 0 : index
        %c128 = arith.constant 128 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c128 step %c1_1 {
          %2 = aie.objectfifo.acquire @inA1(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
          %4 = aie.objectfifo.acquire @inB(Consume, 1) : !aie.objectfifosubview<memref<32xi16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32xi16>> -> memref<32xi16>
          func.call @matvec_scalar_i16_i32(%3, %5, %1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
          aie.objectfifo.release @inA1(Consume, 1)
          aie.objectfifo.release @inB(Consume, 1)
        }
        aie.objectfifo.release @outC1(Produce, 1)
      }
      aie.end
    } {link_with = "mv_32x32.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<16777216xi16>, %arg1: memref<4096xi16>, %arg2: memref<4096xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8388608][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2048][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 131072][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 32][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8519680][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2080][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 262144][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 64][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8650752][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2112][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 393216][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 96][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8781824][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2144][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 524288][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 128][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8912896][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2176][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 655360][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 160][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9043968][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2208][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 786432][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 192][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9175040][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2240][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 917504][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 224][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9306112][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2272][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1048576][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 256][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9437184][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2304][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1179648][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 288][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9568256][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2336][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1310720][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 320][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9699328][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2368][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1441792][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 352][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9830400][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2400][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1572864][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 384][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9961472][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2432][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1703936][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 416][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10092544][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2464][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1835008][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 448][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10223616][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2496][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1966080][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 480][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10354688][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2528][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2097152][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 512][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10485760][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2560][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2228224][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 544][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10616832][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2592][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2359296][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 576][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10747904][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2624][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2490368][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 608][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10878976][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2656][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2621440][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 640][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11010048][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2688][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2752512][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 672][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11141120][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2720][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2883584][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 704][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11272192][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2752][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3014656][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 736][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11403264][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2784][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3145728][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 768][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11534336][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2816][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3276800][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 800][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11665408][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2848][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3407872][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 832][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11796480][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2880][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3538944][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 864][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11927552][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2912][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3670016][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 896][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12058624][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2944][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3801088][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 928][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12189696][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2976][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3932160][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 960][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12320768][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3008][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4063232][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 992][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12451840][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3040][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4194304][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1024][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12582912][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3072][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4325376][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1056][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12713984][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3104][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4456448][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1088][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12845056][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3136][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4587520][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1120][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12976128][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3168][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4718592][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1152][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13107200][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3200][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4849664][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1184][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13238272][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3232][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4980736][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1216][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13369344][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3264][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5111808][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1248][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13500416][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3296][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5242880][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1280][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13631488][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3328][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5373952][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1312][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13762560][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3360][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5505024][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1344][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13893632][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3392][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5636096][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1376][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14024704][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3424][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5767168][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1408][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14155776][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3456][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5898240][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1440][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14286848][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3488][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6029312][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1472][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14417920][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3520][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6160384][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1504][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14548992][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3552][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6291456][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1536][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14680064][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3584][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6422528][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1568][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14811136][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3616][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6553600][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1600][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14942208][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3648][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6684672][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1632][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15073280][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3680][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6815744][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1664][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15204352][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3712][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6946816][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1696][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15335424][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3744][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7077888][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1728][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15466496][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3776][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7208960][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1760][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15597568][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3808][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7340032][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1792][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15728640][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3840][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7471104][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1824][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15859712][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3872][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7602176][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1856][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15990784][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3904][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7733248][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1888][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16121856][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3936][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7864320][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1920][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16252928][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3968][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7995392][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1952][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16384000][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4000][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8126464][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1984][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16515072][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4032][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8257536][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2016][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16646144][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<16777216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4064][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
    }
  }
}

