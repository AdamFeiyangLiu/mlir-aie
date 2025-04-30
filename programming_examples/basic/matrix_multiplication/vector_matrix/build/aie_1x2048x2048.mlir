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
    aie.objectfifo @memB0(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<1024xi16>> 
    aie.objectfifo @inB0(%mem_tile_0_1, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo.link [@memB0] -> [@inB0]([] [])
    aie.objectfifo @outC0(%tile_0_2, {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<32xi32>> 
    aie.objectfifo @inA(%shim_noc_tile_0_0, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<32xi16>> 
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @outC0(Produce, 1) : !aie.objectfifosubview<memref<32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32xi32>> -> memref<32xi32>
        func.call @zero_scalar_i32(%1) : (memref<32xi32>) -> ()
        %c0_0 = arith.constant 0 : index
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %2 = aie.objectfifo.acquire @inA(Consume, 1) : !aie.objectfifosubview<memref<32xi16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32xi16>> -> memref<32xi16>
          %4 = aie.objectfifo.acquire @inB0(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
          func.call @matvec_scalar_i16_i32(%5, %3, %1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
          aie.objectfifo.release @inA(Consume, 1)
          aie.objectfifo.release @inB0(Consume, 1)
        }
        aie.objectfifo.release @outC0(Produce, 1)
      }
      aie.end
    } {link_with = "mv_32x32.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<2048xi16>, %arg1: memref<2048xi16>, %arg2: memref<2048xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][64, 1, 1, 2048][0, 0, 0, 1]) {id = 2 : i64, metadata = @inA} : memref<2048xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][64, 64, 32, 32][65536, 32, 2048, 1]) {id = 1 : i64, metadata = @memB0} : memref<2048xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 2048][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<2048xi32>
      aiex.npu.dma_wait {symbol = @outC0}
    }
  }
}

