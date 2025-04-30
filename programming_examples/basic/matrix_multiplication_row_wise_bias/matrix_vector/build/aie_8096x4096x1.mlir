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
    aie.objectfifo @memA2(%shim_noc_tile_2_0, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<1024xi16>> 
    aie.objectfifo @inA2(%mem_tile_2_1, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo.link [@memA2] -> [@inA2]([] [])
    aie.objectfifo @outC2(%tile_2_2, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<32xi32>> 
    aie.objectfifo @memA3(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<1024xi16>> 
    aie.objectfifo @inA3(%mem_tile_3_1, {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo.link [@memA3] -> [@inA3]([] [])
    aie.objectfifo @outC3(%tile_3_2, {%shim_noc_tile_3_0}, 2 : i32) : !aie.objectfifo<memref<32xi32>> 
    aie.objectfifo @inB(%shim_noc_tile_1_0, {%tile_0_2, %tile_1_2, %tile_2_2, %tile_3_2}, 2 : i32) : !aie.objectfifo<memref<32xi16>> 
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
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @outC2(Produce, 1) : !aie.objectfifosubview<memref<32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32xi32>> -> memref<32xi32>
        func.call @zero_scalar_i32(%1) : (memref<32xi32>) -> ()
        %c0_0 = arith.constant 0 : index
        %c128 = arith.constant 128 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c128 step %c1_1 {
          %2 = aie.objectfifo.acquire @inA2(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
          %4 = aie.objectfifo.acquire @inB(Consume, 1) : !aie.objectfifosubview<memref<32xi16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32xi16>> -> memref<32xi16>
          func.call @matvec_scalar_i16_i32(%3, %5, %1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
          aie.objectfifo.release @inA2(Consume, 1)
          aie.objectfifo.release @inB(Consume, 1)
        }
        aie.objectfifo.release @outC2(Produce, 1)
      }
      aie.end
    } {link_with = "mv_32x32.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @outC3(Produce, 1) : !aie.objectfifosubview<memref<32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32xi32>> -> memref<32xi32>
        func.call @zero_scalar_i32(%1) : (memref<32xi32>) -> ()
        %c0_0 = arith.constant 0 : index
        %c128 = arith.constant 128 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c128 step %c1_1 {
          %2 = aie.objectfifo.acquire @inA3(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
          %4 = aie.objectfifo.acquire @inB(Consume, 1) : !aie.objectfifosubview<memref<32xi16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32xi16>> -> memref<32xi16>
          func.call @matvec_scalar_i16_i32(%3, %5, %1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
          aie.objectfifo.release @inA3(Consume, 1)
          aie.objectfifo.release @inB(Consume, 1)
        }
        aie.objectfifo.release @outC3(Produce, 1)
      }
      aie.end
    } {link_with = "mv_32x32.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<33161216xi16>, %arg1: memref<4096xi16>, %arg2: memref<8096xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][63, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][63, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<33161216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 2024][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<8096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8257536][63, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<33161216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2016][1, 1, 1, 2024][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<8096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16515072][63, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<33161216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4032][1, 1, 1, 2024][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<8096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 24772608][63, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<33161216xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6048][1, 1, 1, 2024][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<8096xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
    }
  }
}

