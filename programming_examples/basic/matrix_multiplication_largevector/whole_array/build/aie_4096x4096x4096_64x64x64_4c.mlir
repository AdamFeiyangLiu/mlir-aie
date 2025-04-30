module {
  aie.device(npu1_4col) {
    func.func private @zero_bf16(memref<64x64xbf16>)
    func.func private @matmul_bf16_bf16(memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>)
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
    %tile_0_3 = aie.tile(0, 3)
    %tile_1_3 = aie.tile(1, 3)
    %tile_2_3 = aie.tile(2, 3)
    %tile_3_3 = aie.tile(3, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_1_4 = aie.tile(1, 4)
    %tile_2_4 = aie.tile(2, 4)
    %tile_3_4 = aie.tile(3, 4)
    %tile_0_5 = aie.tile(0, 5)
    %tile_1_5 = aie.tile(1, 5)
    %tile_2_5 = aie.tile(2, 5)
    %tile_3_5 = aie.tile(3, 5)
    aie.objectfifo @A_L2L1_0(%mem_tile_0_1 dimensionsToStream [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>], {%tile_0_2, %tile_1_2, %tile_2_2, %tile_3_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @A_L2L1_1(%mem_tile_1_1 dimensionsToStream [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>], {%tile_0_3, %tile_1_3, %tile_2_3, %tile_3_3}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @A_L2L1_2(%mem_tile_2_1 dimensionsToStream [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>], {%tile_0_4, %tile_1_4, %tile_2_4, %tile_3_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @A_L2L1_3(%mem_tile_3_1 dimensionsToStream [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>], {%tile_0_5, %tile_1_5, %tile_2_5, %tile_3_5}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @A_L3L2_0(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<4096xbf16>> 
    aie.objectfifo.link [@A_L3L2_0] -> [@A_L2L1_0]([] [])
    aie.objectfifo @A_L3L2_1(%shim_noc_tile_1_0, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<4096xbf16>> 
    aie.objectfifo.link [@A_L3L2_1] -> [@A_L2L1_1]([] [])
    aie.objectfifo @A_L3L2_2(%shim_noc_tile_2_0, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<4096xbf16>> 
    aie.objectfifo.link [@A_L3L2_2] -> [@A_L2L1_2]([] [])
    aie.objectfifo @A_L3L2_3(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<4096xbf16>> 
    aie.objectfifo.link [@A_L3L2_3] -> [@A_L2L1_3]([] [])
    aie.objectfifo @B_L3L2_0(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<4096xbf16>> 
    aie.objectfifo @B_L2L1_0(%mem_tile_0_1 dimensionsToStream [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>], {%tile_0_2, %tile_0_3, %tile_0_4, %tile_0_5}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@B_L3L2_0] -> [@B_L2L1_0]([] [])
    aie.objectfifo @B_L3L2_1(%shim_noc_tile_1_0, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<4096xbf16>> 
    aie.objectfifo @B_L2L1_1(%mem_tile_1_1 dimensionsToStream [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>], {%tile_1_2, %tile_1_3, %tile_1_4, %tile_1_5}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@B_L3L2_1] -> [@B_L2L1_1]([] [])
    aie.objectfifo @B_L3L2_2(%shim_noc_tile_2_0, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<4096xbf16>> 
    aie.objectfifo @B_L2L1_2(%mem_tile_2_1 dimensionsToStream [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>], {%tile_2_2, %tile_2_3, %tile_2_4, %tile_2_5}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@B_L3L2_2] -> [@B_L2L1_2]([] [])
    aie.objectfifo @B_L3L2_3(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<4096xbf16>> 
    aie.objectfifo @B_L2L1_3(%mem_tile_3_1 dimensionsToStream [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>], {%tile_3_2, %tile_3_3, %tile_3_4, %tile_3_5}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@B_L3L2_3] -> [@B_L2L1_3]([] [])
    aie.objectfifo @C_L1L2_0_0(%tile_0_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_0_1(%tile_0_3, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_0_2(%tile_0_4, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_0_3(%tile_0_5, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L2L3_0(%mem_tile_0_1 dimensionsToStream [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>], {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<16384xbf16>> 
    aie.objectfifo.link [@C_L1L2_0_0, @C_L1L2_0_1, @C_L1L2_0_2, @C_L1L2_0_3] -> [@C_L2L3_0]([0, 4096, 8192, 12288] [])
    aie.objectfifo @C_L1L2_1_0(%tile_1_2, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_1_1(%tile_1_3, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_1_2(%tile_1_4, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_1_3(%tile_1_5, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L2L3_1(%mem_tile_1_1 dimensionsToStream [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>], {%shim_noc_tile_1_0}, 2 : i32) : !aie.objectfifo<memref<16384xbf16>> 
    aie.objectfifo.link [@C_L1L2_1_0, @C_L1L2_1_1, @C_L1L2_1_2, @C_L1L2_1_3] -> [@C_L2L3_1]([0, 4096, 8192, 12288] [])
    aie.objectfifo @C_L1L2_2_0(%tile_2_2, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_2_1(%tile_2_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_2_2(%tile_2_4, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_2_3(%tile_2_5, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L2L3_2(%mem_tile_2_1 dimensionsToStream [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>], {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<16384xbf16>> 
    aie.objectfifo.link [@C_L1L2_2_0, @C_L1L2_2_1, @C_L1L2_2_2, @C_L1L2_2_3] -> [@C_L2L3_2]([0, 4096, 8192, 12288] [])
    aie.objectfifo @C_L1L2_3_0(%tile_3_2, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_3_1(%tile_3_3, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_3_2(%tile_3_4, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L1L2_3_3(%tile_3_5, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @C_L2L3_3(%mem_tile_3_1 dimensionsToStream [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>], {%shim_noc_tile_3_0}, 2 : i32) : !aie.objectfifo<memref<16384xbf16>> 
    aie.objectfifo.link [@C_L1L2_3_0, @C_L1L2_3_1, @C_L1L2_3_2, @C_L1L2_3_3] -> [@C_L2L3_3]([0, 4096, 8192, 12288] [])
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_0_0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_0(Consume, 1)
            aie.objectfifo.release @B_L2L1_0(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_0_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_1_0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_0(Consume, 1)
            aie.objectfifo.release @B_L2L1_1(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_1_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_2_0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_0(Consume, 1)
            aie.objectfifo.release @B_L2L1_2(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_2_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_3_0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_0(Consume, 1)
            aie.objectfifo.release @B_L2L1_3(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_3_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_0_1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_1(Consume, 1)
            aie.objectfifo.release @B_L2L1_0(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_0_1(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_1_1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_1(Consume, 1)
            aie.objectfifo.release @B_L2L1_1(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_1_1(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_2_1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_1(Consume, 1)
            aie.objectfifo.release @B_L2L1_2(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_2_1(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_3_1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_1(Consume, 1)
            aie.objectfifo.release @B_L2L1_3(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_3_1(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_0_2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_2(Consume, 1)
            aie.objectfifo.release @B_L2L1_0(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_0_2(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_1_2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_2(Consume, 1)
            aie.objectfifo.release @B_L2L1_1(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_1_2(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_2_2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_2(Consume, 1)
            aie.objectfifo.release @B_L2L1_2(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_2_2(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_3_2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_2(Consume, 1)
            aie.objectfifo.release @B_L2L1_3(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_3_2(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_0_3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_3(Consume, 1)
            aie.objectfifo.release @B_L2L1_0(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_0_3(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_1_3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_3(Consume, 1)
            aie.objectfifo.release @B_L2L1_1(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_1_3(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_2_3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_3(Consume, 1)
            aie.objectfifo.release @B_L2L1_2(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_2_3(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c256 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_3_3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c64 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c64 step %c1_3 {
            %2 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %4 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @matmul_bf16_bf16(%3, %5, %1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
            aie.objectfifo.release @A_L2L1_3(Consume, 1)
            aie.objectfifo.release @B_L2L1_3(Consume, 1)
          }
          aie.objectfifo.release @C_L1L2_3_3(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mm_64x64x64.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<16777216xbf16>, %arg1: memref<16777216xbf16>, %arg2: memref<16777216xbf16>) {
      %0 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 0, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 0, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%2)
      %3 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 1048576, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%3)
      %4 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%4)
      %5 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 64, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%5)
      %6 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 262144, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%6)
      %7 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%7)
      %8 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 1310720, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%8)
      %9 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%9)
      %10 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 128, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%10)
      %11 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 524288, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%11)
      %12 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%12)
      %13 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 1572864, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%13)
      %14 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%14)
      %15 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 192, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%15)
      %16 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 786432, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%16)
      %17 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%17)
      %18 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 1835008, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%18)
      %19 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%19)
      %20 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 2097152, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%20)
      %21 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 2097152, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%21)
      %22 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%22)
      %23 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 3145728, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%23)
      %24 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%24)
      %25 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 2097216, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%25)
      %26 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 2359296, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%26)
      %27 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%27)
      %28 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 3407872, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%28)
      %29 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%29)
      %30 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 2097280, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%30)
      %31 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 2621440, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%31)
      %32 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%32)
      %33 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 3670016, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%33)
      %34 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%34)
      %35 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 2097344, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%35)
      %36 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 2883584, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%36)
      %37 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%37)
      %38 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 3932160, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%38)
      %39 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%39)
      aiex.dma_await_task(%0)
      aiex.dma_await_task(%5)
      aiex.dma_await_task(%10)
      aiex.dma_await_task(%15)
      aiex.dma_await_task(%20)
      aiex.dma_await_task(%25)
      aiex.dma_await_task(%30)
      aiex.dma_await_task(%35)
      aiex.dma_free_task(%1)
      aiex.dma_free_task(%2)
      aiex.dma_free_task(%3)
      aiex.dma_free_task(%4)
      aiex.dma_free_task(%6)
      aiex.dma_free_task(%7)
      aiex.dma_free_task(%8)
      aiex.dma_free_task(%9)
      aiex.dma_free_task(%11)
      aiex.dma_free_task(%12)
      aiex.dma_free_task(%13)
      aiex.dma_free_task(%14)
      aiex.dma_free_task(%16)
      aiex.dma_free_task(%17)
      aiex.dma_free_task(%18)
      aiex.dma_free_task(%19)
      aiex.dma_free_task(%21)
      aiex.dma_free_task(%22)
      aiex.dma_free_task(%23)
      aiex.dma_free_task(%24)
      aiex.dma_free_task(%26)
      aiex.dma_free_task(%27)
      aiex.dma_free_task(%28)
      aiex.dma_free_task(%29)
      aiex.dma_free_task(%31)
      aiex.dma_free_task(%32)
      aiex.dma_free_task(%33)
      aiex.dma_free_task(%34)
      aiex.dma_free_task(%36)
      aiex.dma_free_task(%37)
      aiex.dma_free_task(%38)
      aiex.dma_free_task(%39)
      %40 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 4194304, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%40)
      %41 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 4194304, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%41)
      %42 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%42)
      %43 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 5242880, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%43)
      %44 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%44)
      %45 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 4194368, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%45)
      %46 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 4456448, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%46)
      %47 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%47)
      %48 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 5505024, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%48)
      %49 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%49)
      %50 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 4194432, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%50)
      %51 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 4718592, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%51)
      %52 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%52)
      %53 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 5767168, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%53)
      %54 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%54)
      %55 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 4194496, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%55)
      %56 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 4980736, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%56)
      %57 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%57)
      %58 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 6029312, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%58)
      %59 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%59)
      aiex.dma_await_task(%40)
      aiex.dma_await_task(%45)
      aiex.dma_await_task(%50)
      aiex.dma_await_task(%55)
      aiex.dma_free_task(%41)
      aiex.dma_free_task(%42)
      aiex.dma_free_task(%43)
      aiex.dma_free_task(%44)
      aiex.dma_free_task(%46)
      aiex.dma_free_task(%47)
      aiex.dma_free_task(%48)
      aiex.dma_free_task(%49)
      aiex.dma_free_task(%51)
      aiex.dma_free_task(%52)
      aiex.dma_free_task(%53)
      aiex.dma_free_task(%54)
      aiex.dma_free_task(%56)
      aiex.dma_free_task(%57)
      aiex.dma_free_task(%58)
      aiex.dma_free_task(%59)
      %60 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 6291456, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%60)
      %61 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 6291456, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%61)
      %62 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%62)
      %63 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 7340032, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%63)
      %64 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%64)
      %65 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 6291520, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%65)
      %66 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 6553600, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%66)
      %67 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%67)
      %68 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 7602176, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%68)
      %69 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%69)
      %70 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 6291584, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%70)
      %71 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 6815744, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%71)
      %72 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%72)
      %73 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 7864320, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%73)
      %74 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%74)
      %75 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 6291648, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%75)
      %76 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 7077888, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%76)
      %77 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%77)
      %78 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 8126464, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%78)
      %79 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%79)
      aiex.dma_await_task(%60)
      aiex.dma_await_task(%65)
      aiex.dma_await_task(%70)
      aiex.dma_await_task(%75)
      aiex.dma_free_task(%61)
      aiex.dma_free_task(%62)
      aiex.dma_free_task(%63)
      aiex.dma_free_task(%64)
      aiex.dma_free_task(%66)
      aiex.dma_free_task(%67)
      aiex.dma_free_task(%68)
      aiex.dma_free_task(%69)
      aiex.dma_free_task(%71)
      aiex.dma_free_task(%72)
      aiex.dma_free_task(%73)
      aiex.dma_free_task(%74)
      aiex.dma_free_task(%76)
      aiex.dma_free_task(%77)
      aiex.dma_free_task(%78)
      aiex.dma_free_task(%79)
      %80 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 8388608, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%80)
      %81 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 8388608, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%81)
      %82 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%82)
      %83 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 9437184, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%83)
      %84 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%84)
      %85 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 8388672, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%85)
      %86 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 8650752, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%86)
      %87 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%87)
      %88 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 9699328, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%88)
      %89 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%89)
      %90 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 8388736, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%90)
      %91 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 8912896, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%91)
      %92 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%92)
      %93 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 9961472, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%93)
      %94 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%94)
      %95 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 8388800, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%95)
      %96 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 9175040, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%96)
      %97 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%97)
      %98 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 10223616, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%98)
      %99 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%99)
      aiex.dma_await_task(%80)
      aiex.dma_await_task(%85)
      aiex.dma_await_task(%90)
      aiex.dma_await_task(%95)
      aiex.dma_free_task(%81)
      aiex.dma_free_task(%82)
      aiex.dma_free_task(%83)
      aiex.dma_free_task(%84)
      aiex.dma_free_task(%86)
      aiex.dma_free_task(%87)
      aiex.dma_free_task(%88)
      aiex.dma_free_task(%89)
      aiex.dma_free_task(%91)
      aiex.dma_free_task(%92)
      aiex.dma_free_task(%93)
      aiex.dma_free_task(%94)
      aiex.dma_free_task(%96)
      aiex.dma_free_task(%97)
      aiex.dma_free_task(%98)
      aiex.dma_free_task(%99)
      %100 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 10485760, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%100)
      %101 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 10485760, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%101)
      %102 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%102)
      %103 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 11534336, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%103)
      %104 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%104)
      %105 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 10485824, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%105)
      %106 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 10747904, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%106)
      %107 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%107)
      %108 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 11796480, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%108)
      %109 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%109)
      %110 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 10485888, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%110)
      %111 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 11010048, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%111)
      %112 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%112)
      %113 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 12058624, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%113)
      %114 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%114)
      %115 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 10485952, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%115)
      %116 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 11272192, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%116)
      %117 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%117)
      %118 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 12320768, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%118)
      %119 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%119)
      aiex.dma_await_task(%100)
      aiex.dma_await_task(%105)
      aiex.dma_await_task(%110)
      aiex.dma_await_task(%115)
      aiex.dma_free_task(%101)
      aiex.dma_free_task(%102)
      aiex.dma_free_task(%103)
      aiex.dma_free_task(%104)
      aiex.dma_free_task(%106)
      aiex.dma_free_task(%107)
      aiex.dma_free_task(%108)
      aiex.dma_free_task(%109)
      aiex.dma_free_task(%111)
      aiex.dma_free_task(%112)
      aiex.dma_free_task(%113)
      aiex.dma_free_task(%114)
      aiex.dma_free_task(%116)
      aiex.dma_free_task(%117)
      aiex.dma_free_task(%118)
      aiex.dma_free_task(%119)
      %120 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 12582912, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%120)
      %121 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 12582912, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%121)
      %122 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%122)
      %123 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 13631488, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%123)
      %124 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%124)
      %125 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 12582976, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%125)
      %126 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 12845056, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%126)
      %127 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%127)
      %128 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 13893632, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%128)
      %129 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%129)
      %130 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 12583040, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%130)
      %131 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 13107200, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%131)
      %132 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%132)
      %133 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 14155776, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%133)
      %134 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%134)
      %135 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 12583104, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%135)
      %136 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 13369344, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%136)
      %137 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%137)
      %138 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 14417920, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%138)
      %139 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%139)
      aiex.dma_await_task(%120)
      aiex.dma_await_task(%125)
      aiex.dma_await_task(%130)
      aiex.dma_await_task(%135)
      aiex.dma_free_task(%121)
      aiex.dma_free_task(%122)
      aiex.dma_free_task(%123)
      aiex.dma_free_task(%124)
      aiex.dma_free_task(%126)
      aiex.dma_free_task(%127)
      aiex.dma_free_task(%128)
      aiex.dma_free_task(%129)
      aiex.dma_free_task(%131)
      aiex.dma_free_task(%132)
      aiex.dma_free_task(%133)
      aiex.dma_free_task(%134)
      aiex.dma_free_task(%136)
      aiex.dma_free_task(%137)
      aiex.dma_free_task(%138)
      aiex.dma_free_task(%139)
      %140 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 14680064, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%140)
      %141 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 14680064, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%141)
      %142 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%142)
      %143 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 15728640, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%143)
      %144 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 0, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%144)
      %145 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 14680128, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%145)
      %146 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 14942208, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%146)
      %147 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%147)
      %148 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 15990784, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%148)
      %149 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 64, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%149)
      %150 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 14680192, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%150)
      %151 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 15204352, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%151)
      %152 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%152)
      %153 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 16252928, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%153)
      %154 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 128, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%154)
      %155 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<16777216xbf16>, 14680256, 262144, [<size = 2, stride = 1048576>, <size = 16, stride = 256>, <size = 256, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%155)
      %156 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 15466496, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%156)
      %157 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%157)
      %158 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<16777216xbf16>, 16515072, 262144, [<size = 16, stride = 0>, <size = 64, stride = 64>, <size = 64, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 15 : i32}
      aiex.dma_start_task(%158)
      %159 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<16777216xbf16>, 192, 4194304, [<size = 1, stride = 0>, <size = 16, stride = 256>, <size = 4096, stride = 4096>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%159)
      aiex.dma_await_task(%140)
      aiex.dma_await_task(%145)
      aiex.dma_await_task(%150)
      aiex.dma_await_task(%155)
      aiex.dma_free_task(%141)
      aiex.dma_free_task(%142)
      aiex.dma_free_task(%143)
      aiex.dma_free_task(%144)
      aiex.dma_free_task(%146)
      aiex.dma_free_task(%147)
      aiex.dma_free_task(%148)
      aiex.dma_free_task(%149)
      aiex.dma_free_task(%151)
      aiex.dma_free_task(%152)
      aiex.dma_free_task(%153)
      aiex.dma_free_task(%154)
      aiex.dma_free_task(%156)
      aiex.dma_free_task(%157)
      aiex.dma_free_task(%158)
      aiex.dma_free_task(%159)
    }
  }
}

