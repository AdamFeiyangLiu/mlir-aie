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
    aiex.runtime_sequence @sequence(%arg0: memref<4194304xi16>, %arg1: memref<4096xi16>, %arg2: memref<1024xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2097152][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 512][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 131072][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 32][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2228224][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 544][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 262144][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 64][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2359296][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 576][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 393216][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 96][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2490368][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 608][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 524288][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 128][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2621440][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 640][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 655360][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 160][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2752512][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 672][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 786432][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 192][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2883584][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 704][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 917504][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 224][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3014656][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 736][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1048576][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 256][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3145728][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 768][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1179648][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 288][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3276800][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 800][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1310720][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 320][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3407872][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 832][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1441792][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 352][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3538944][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 864][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1572864][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 384][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3670016][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 896][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1703936][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 416][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3801088][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 928][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1835008][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 448][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3932160][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 960][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1966080][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 480][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<1024xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4063232][1, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<4194304xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 992][1, 1, 1, 32][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<1024xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
    }
  }
}

