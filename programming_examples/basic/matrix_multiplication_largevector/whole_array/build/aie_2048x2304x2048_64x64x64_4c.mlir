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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_0_0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_1_0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_2_0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_3_0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_0_1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_1_1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_2_1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_3_1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_0_2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_1_2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_2_2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_3_2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_0_3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_1_3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_2_3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
        %c64 = arith.constant 64 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c64 step %c1_1 {
          %0 = aie.objectfifo.acquire @C_L1L2_3_3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%1) : (memref<64x64xbf16>) -> ()
          %c0_2 = arith.constant 0 : index
          %c36 = arith.constant 36 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c36 step %c1_3 {
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
    aiex.runtime_sequence @sequence(%arg0: memref<4718592xbf16>, %arg1: memref<4718592xbf16>, %arg2: memref<4194304xbf16>) {
      %0 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 0, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 0, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 0, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%2)
      %3 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 589824, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%3)
      %4 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 0, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%4)
      %5 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 64, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%5)
      %6 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 147456, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%6)
      %7 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 64, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%7)
      %8 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 737280, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%8)
      %9 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 64, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%9)
      %10 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 128, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%10)
      %11 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 294912, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%11)
      %12 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 128, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%12)
      %13 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 884736, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%13)
      %14 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 128, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%14)
      %15 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 192, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%15)
      %16 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 442368, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%16)
      %17 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 192, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%17)
      %18 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 1032192, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%18)
      %19 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 192, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%19)
      %20 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 1048576, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%20)
      %21 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 1179648, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%21)
      %22 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 0, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%22)
      %23 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 1769472, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%23)
      %24 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 0, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%24)
      %25 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 1048640, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%25)
      %26 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 1327104, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%26)
      %27 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 64, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%27)
      %28 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 1916928, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%28)
      %29 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 64, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%29)
      %30 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 1048704, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%30)
      %31 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 1474560, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%31)
      %32 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 128, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%32)
      %33 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 2064384, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%33)
      %34 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 128, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%34)
      %35 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 1048768, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%35)
      %36 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 1622016, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%36)
      %37 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 192, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%37)
      %38 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 2211840, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%38)
      %39 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 192, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
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
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 2097152, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%40)
      %41 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 2359296, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%41)
      %42 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 0, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%42)
      %43 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 2949120, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%43)
      %44 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 0, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%44)
      %45 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 2097216, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%45)
      %46 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 2506752, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%46)
      %47 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 64, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%47)
      %48 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 3096576, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%48)
      %49 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 64, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%49)
      %50 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 2097280, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%50)
      %51 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 2654208, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%51)
      %52 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 128, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%52)
      %53 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 3244032, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%53)
      %54 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 128, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%54)
      %55 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 2097344, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%55)
      %56 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 2801664, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%56)
      %57 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 192, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%57)
      %58 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 3391488, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%58)
      %59 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 192, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
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
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 3145728, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%60)
      %61 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 3538944, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%61)
      %62 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 0, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%62)
      %63 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 4128768, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%63)
      %64 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 0, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%64)
      %65 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 3145792, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%65)
      %66 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 3686400, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%66)
      %67 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 64, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%67)
      %68 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 4276224, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%68)
      %69 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 64, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%69)
      %70 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 3145856, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%70)
      %71 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 3833856, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%71)
      %72 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 128, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%72)
      %73 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 4423680, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%73)
      %74 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 128, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%74)
      %75 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<4194304xbf16>, 3145920, 131072, [<size = 2, stride = 524288>, <size = 8, stride = 256>, <size = 256, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      } {issue_token = true, repeat_count = 1 : i32}
      aiex.dma_start_task(%75)
      %76 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 3981312, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%76)
      %77 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 192, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%77)
      %78 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<4718592xbf16>, 4571136, 147456, [<size = 8, stride = 0>, <size = 36, stride = 64>, <size = 64, stride = 2304>, <size = 64, stride = 1>])
        aie.end
      } {repeat_count = 7 : i32}
      aiex.dma_start_task(%78)
      %79 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<4718592xbf16>, 192, 1179648, [<size = 1, stride = 0>, <size = 8, stride = 256>, <size = 2304, stride = 2048>, <size = 64, stride = 1>])
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
    }
  }
}

