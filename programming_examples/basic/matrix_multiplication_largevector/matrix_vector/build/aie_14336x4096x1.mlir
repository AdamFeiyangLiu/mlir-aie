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
    aiex.runtime_sequence @sequence(%arg0: memref<58720256xi16>, %arg1: memref<4096xi16>, %arg2: memref<14336xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14680064][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3584][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 29360128][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7168][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 44040192][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10752][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 131072][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 32][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14811136][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3616][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 29491200][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7200][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 44171264][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10784][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 262144][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 64][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14942208][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3648][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 29622272][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7232][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 44302336][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10816][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 393216][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 96][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15073280][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3680][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 29753344][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7264][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 44433408][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10848][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 524288][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 128][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15204352][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3712][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 29884416][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7296][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 44564480][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10880][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 655360][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 160][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15335424][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3744][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 30015488][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7328][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 44695552][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10912][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 786432][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 192][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15466496][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3776][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 30146560][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7360][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 44826624][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10944][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 917504][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 224][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15597568][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3808][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 30277632][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7392][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 44957696][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10976][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1048576][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 256][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15728640][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3840][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 30408704][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7424][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 45088768][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11008][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1179648][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 288][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15859712][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3872][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 30539776][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7456][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 45219840][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11040][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1310720][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 320][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 15990784][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3904][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 30670848][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7488][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 45350912][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11072][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1441792][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 352][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16121856][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3936][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 30801920][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7520][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 45481984][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11104][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1572864][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 384][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16252928][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3968][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 30932992][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7552][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 45613056][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11136][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1703936][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 416][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16384000][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4000][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 31064064][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7584][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 45744128][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11168][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1835008][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 448][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16515072][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4032][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 31195136][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7616][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 45875200][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11200][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1966080][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 480][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16646144][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4064][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 31326208][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7648][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 46006272][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11232][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2097152][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 512][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16777216][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4096][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 31457280][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7680][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 46137344][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11264][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2228224][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 544][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16908288][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4128][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 31588352][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7712][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 46268416][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11296][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2359296][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 576][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 17039360][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4160][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 31719424][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7744][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 46399488][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11328][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2490368][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 608][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 17170432][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4192][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 31850496][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7776][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 46530560][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11360][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2621440][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 640][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 17301504][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4224][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 31981568][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7808][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 46661632][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11392][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2752512][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 672][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 17432576][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4256][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 32112640][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7840][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 46792704][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11424][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2883584][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 704][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 17563648][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4288][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 32243712][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7872][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 46923776][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11456][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3014656][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 736][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 17694720][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4320][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 32374784][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7904][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 47054848][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11488][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3145728][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 768][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 17825792][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4352][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 32505856][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7936][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 47185920][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11520][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3276800][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 800][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 17956864][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4384][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 32636928][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7968][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 47316992][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11552][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3407872][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 832][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 18087936][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4416][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 32768000][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8000][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 47448064][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11584][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3538944][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 864][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 18219008][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4448][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 32899072][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8032][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 47579136][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11616][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3670016][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 896][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 18350080][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4480][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 33030144][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8064][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 47710208][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11648][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3801088][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 928][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 18481152][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4512][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 33161216][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8096][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 47841280][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11680][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3932160][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 960][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 18612224][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4544][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 33292288][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8128][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 47972352][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11712][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4063232][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 992][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 18743296][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4576][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 33423360][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8160][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 48103424][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11744][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4194304][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1024][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 18874368][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4608][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 33554432][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8192][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 48234496][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11776][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4325376][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1056][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 19005440][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4640][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 33685504][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8224][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 48365568][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11808][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4456448][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1088][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 19136512][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4672][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 33816576][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8256][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 48496640][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11840][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4587520][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1120][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 19267584][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4704][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 33947648][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8288][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 48627712][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11872][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4718592][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1152][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 19398656][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4736][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 34078720][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8320][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 48758784][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11904][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4849664][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1184][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 19529728][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4768][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 34209792][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8352][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 48889856][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11936][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4980736][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1216][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 19660800][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4800][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 34340864][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8384][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 49020928][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11968][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5111808][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1248][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 19791872][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4832][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 34471936][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8416][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 49152000][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12000][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5242880][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1280][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 19922944][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4864][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 34603008][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8448][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 49283072][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12032][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5373952][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1312][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 20054016][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4896][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 34734080][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8480][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 49414144][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12064][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5505024][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1344][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 20185088][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4928][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 34865152][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8512][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 49545216][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12096][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5636096][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1376][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 20316160][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4960][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 34996224][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8544][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 49676288][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12128][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5767168][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1408][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 20447232][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4992][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 35127296][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8576][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 49807360][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12160][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5898240][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1440][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 20578304][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5024][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 35258368][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8608][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 49938432][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12192][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6029312][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1472][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 20709376][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5056][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 35389440][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8640][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 50069504][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12224][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6160384][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1504][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 20840448][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5088][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 35520512][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8672][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 50200576][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12256][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6291456][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1536][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 20971520][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5120][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 35651584][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8704][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 50331648][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12288][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6422528][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1568][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 21102592][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5152][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 35782656][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8736][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 50462720][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12320][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6553600][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1600][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 21233664][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5184][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 35913728][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8768][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 50593792][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12352][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6684672][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1632][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 21364736][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5216][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 36044800][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8800][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 50724864][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12384][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6815744][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1664][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 21495808][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5248][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 36175872][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8832][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 50855936][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12416][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6946816][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1696][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 21626880][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5280][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 36306944][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8864][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 50987008][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12448][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7077888][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1728][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 21757952][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5312][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 36438016][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8896][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 51118080][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12480][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7208960][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1760][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 21889024][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5344][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 36569088][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8928][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 51249152][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12512][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7340032][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1792][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 22020096][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5376][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 36700160][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8960][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 51380224][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12544][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7471104][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1824][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 22151168][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5408][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 36831232][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8992][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 51511296][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12576][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7602176][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1856][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 22282240][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5440][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 36962304][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9024][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 51642368][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12608][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7733248][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1888][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 22413312][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5472][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 37093376][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9056][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 51773440][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12640][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7864320][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1920][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 22544384][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5504][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 37224448][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9088][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 51904512][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12672][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7995392][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1952][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 22675456][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5536][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 37355520][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9120][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 52035584][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12704][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8126464][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1984][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 22806528][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5568][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 37486592][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9152][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 52166656][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12736][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8257536][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2016][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 22937600][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5600][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 37617664][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9184][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 52297728][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12768][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8388608][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2048][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 23068672][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5632][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 37748736][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9216][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 52428800][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12800][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8519680][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2080][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 23199744][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5664][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 37879808][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9248][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 52559872][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12832][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8650752][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2112][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 23330816][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5696][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 38010880][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9280][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 52690944][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12864][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8781824][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2144][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 23461888][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5728][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 38141952][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9312][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 52822016][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12896][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8912896][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2176][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 23592960][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5760][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 38273024][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9344][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 52953088][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12928][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9043968][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2208][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 23724032][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5792][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 38404096][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9376][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 53084160][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12960][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9175040][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2240][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 23855104][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5824][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 38535168][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9408][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 53215232][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12992][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9306112][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2272][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 23986176][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5856][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 38666240][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9440][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 53346304][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13024][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9437184][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2304][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 24117248][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5888][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 38797312][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9472][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 53477376][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13056][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9568256][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2336][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 24248320][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5920][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 38928384][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9504][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 53608448][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13088][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9699328][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2368][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 24379392][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5952][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 39059456][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9536][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 53739520][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13120][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9830400][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2400][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 24510464][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5984][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 39190528][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9568][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 53870592][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13152][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 9961472][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2432][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 24641536][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6016][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 39321600][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9600][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 54001664][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13184][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10092544][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2464][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 24772608][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6048][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 39452672][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9632][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 54132736][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13216][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10223616][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2496][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 24903680][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6080][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 39583744][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9664][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 54263808][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13248][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10354688][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2528][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 25034752][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6112][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 39714816][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9696][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 54394880][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13280][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10485760][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2560][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 25165824][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6144][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 39845888][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9728][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 54525952][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13312][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10616832][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2592][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 25296896][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6176][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 39976960][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9760][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 54657024][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13344][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10747904][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2624][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 25427968][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6208][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 40108032][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9792][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 54788096][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13376][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10878976][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2656][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 25559040][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6240][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 40239104][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9824][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 54919168][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13408][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11010048][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2688][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 25690112][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6272][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 40370176][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9856][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 55050240][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13440][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11141120][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2720][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 25821184][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6304][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 40501248][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9888][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 55181312][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13472][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11272192][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2752][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 25952256][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6336][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 40632320][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9920][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 55312384][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13504][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11403264][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2784][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 26083328][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6368][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 40763392][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9952][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 55443456][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13536][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11534336][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2816][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 26214400][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6400][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 40894464][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9984][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 55574528][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13568][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11665408][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2848][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 26345472][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6432][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 41025536][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10016][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 55705600][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13600][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11796480][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2880][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 26476544][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6464][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 41156608][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10048][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 55836672][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13632][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 11927552][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2912][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 26607616][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6496][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 41287680][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10080][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 55967744][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13664][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12058624][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2944][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 26738688][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6528][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 41418752][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10112][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 56098816][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13696][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12189696][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2976][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 26869760][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6560][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 41549824][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10144][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 56229888][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13728][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12320768][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3008][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 27000832][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6592][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 41680896][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10176][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 56360960][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13760][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12451840][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3040][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 27131904][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6624][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 41811968][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10208][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 56492032][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13792][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12582912][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3072][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 27262976][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6656][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 41943040][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10240][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 56623104][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13824][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12713984][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3104][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 27394048][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6688][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 42074112][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10272][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 56754176][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13856][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12845056][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3136][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 27525120][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6720][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 42205184][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10304][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 56885248][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13888][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12976128][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3168][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 27656192][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6752][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 42336256][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10336][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 57016320][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13920][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13107200][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3200][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 27787264][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6784][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 42467328][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10368][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 57147392][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13952][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13238272][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3232][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 27918336][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6816][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 42598400][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10400][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 57278464][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13984][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13369344][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3264][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 28049408][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6848][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 42729472][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10432][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 57409536][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14016][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13500416][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3296][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 28180480][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6880][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 42860544][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10464][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 57540608][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14048][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13631488][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3328][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 28311552][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6912][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 42991616][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10496][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 57671680][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14080][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13762560][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3360][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 28442624][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6944][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 43122688][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10528][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 57802752][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14112][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 13893632][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3392][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 28573696][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6976][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 43253760][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10560][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 57933824][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14144][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14024704][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3424][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 28704768][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7008][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 43384832][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10592][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 58064896][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14176][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14155776][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3456][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 28835840][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7040][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 43515904][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10624][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 58195968][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14208][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14286848][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3488][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 28966912][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7072][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 43646976][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10656][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 58327040][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14240][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14417920][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3520][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 29097984][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7104][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 43778048][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10688][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 58458112][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14272][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14548992][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3552][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 29229056][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7136][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 43909120][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10720][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<14336xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 58589184][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<58720256xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14304][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<14336xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
    }
  }
}

