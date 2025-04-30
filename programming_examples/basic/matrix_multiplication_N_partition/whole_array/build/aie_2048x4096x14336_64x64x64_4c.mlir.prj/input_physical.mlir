module {
  aie.device(npu1_4col) {
    memref.global "public" @C_L2L3_3_cons : memref<16384xbf16>
    memref.global "public" @C_L2L3_3 : memref<16384xbf16>
    memref.global "public" @C_L1L2_3_3_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_3_3 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_3_2_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_3_2 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_3_1_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_3_1 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_3_0_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_3_0 : memref<64x64xbf16>
    memref.global "public" @C_L2L3_2_cons : memref<16384xbf16>
    memref.global "public" @C_L2L3_2 : memref<16384xbf16>
    memref.global "public" @C_L1L2_2_3_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_2_3 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_2_2_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_2_2 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_2_1_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_2_1 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_2_0_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_2_0 : memref<64x64xbf16>
    memref.global "public" @C_L2L3_1_cons : memref<16384xbf16>
    memref.global "public" @C_L2L3_1 : memref<16384xbf16>
    memref.global "public" @C_L1L2_1_3_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_1_3 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_1_2_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_1_2 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_1_1_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_1_1 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_1_0_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_1_0 : memref<64x64xbf16>
    memref.global "public" @C_L2L3_0_cons : memref<16384xbf16>
    memref.global "public" @C_L2L3_0 : memref<16384xbf16>
    memref.global "public" @C_L1L2_0_3_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_0_3 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_0_2_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_0_2 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_0_1_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_0_1 : memref<64x64xbf16>
    memref.global "public" @C_L1L2_0_0_cons : memref<64x64xbf16>
    memref.global "public" @C_L1L2_0_0 : memref<64x64xbf16>
    memref.global "public" @B_L2L1_3_0_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_3_1_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_3_2_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_3_3_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_3 : memref<64x64xbf16>
    memref.global "public" @B_L3L2_3_cons : memref<4096xbf16>
    memref.global "public" @B_L3L2_3 : memref<4096xbf16>
    memref.global "public" @B_L2L1_2_0_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_2_1_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_2_2_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_2_3_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_2 : memref<64x64xbf16>
    memref.global "public" @B_L3L2_2_cons : memref<4096xbf16>
    memref.global "public" @B_L3L2_2 : memref<4096xbf16>
    memref.global "public" @B_L2L1_1_0_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_1_1_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_1_2_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_1_3_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_1 : memref<64x64xbf16>
    memref.global "public" @B_L3L2_1_cons : memref<4096xbf16>
    memref.global "public" @B_L3L2_1 : memref<4096xbf16>
    memref.global "public" @B_L2L1_0_0_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_0_1_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_0_2_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_0_3_cons : memref<64x64xbf16>
    memref.global "public" @B_L2L1_0 : memref<64x64xbf16>
    memref.global "public" @B_L3L2_0_cons : memref<4096xbf16>
    memref.global "public" @B_L3L2_0 : memref<4096xbf16>
    memref.global "public" @A_L3L2_3_cons : memref<4096xbf16>
    memref.global "public" @A_L3L2_3 : memref<4096xbf16>
    memref.global "public" @A_L3L2_2_cons : memref<4096xbf16>
    memref.global "public" @A_L3L2_2 : memref<4096xbf16>
    memref.global "public" @A_L3L2_1_cons : memref<4096xbf16>
    memref.global "public" @A_L3L2_1 : memref<4096xbf16>
    memref.global "public" @A_L3L2_0_cons : memref<4096xbf16>
    memref.global "public" @A_L3L2_0 : memref<4096xbf16>
    memref.global "public" @A_L2L1_3_0_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_3_1_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_3_2_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_3_3_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_3 : memref<64x64xbf16>
    memref.global "public" @A_L2L1_2_0_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_2_1_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_2_2_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_2_3_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_2 : memref<64x64xbf16>
    memref.global "public" @A_L2L1_1_0_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_1_1_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_1_2_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_1_3_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_1 : memref<64x64xbf16>
    memref.global "public" @A_L2L1_0_0_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_0_1_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_0_2_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_0_3_cons : memref<64x64xbf16>
    memref.global "public" @A_L2L1_0 : memref<64x64xbf16>
    func.func private @zero_bf16(memref<64x64xbf16>)
    func.func private @matmul_bf16_bf16(memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>)
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %C_L2L3_3_cons_prod_lock = aie.lock(%shim_noc_tile_3_0, 4) {init = 1 : i32, sym_name = "C_L2L3_3_cons_prod_lock"}
    %C_L2L3_3_cons_cons_lock = aie.lock(%shim_noc_tile_3_0, 5) {init = 0 : i32, sym_name = "C_L2L3_3_cons_cons_lock"}
    %C_L2L3_3_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, sym_name = "C_L2L3_3_buff_0"} : memref<16384xbf16> 
    %C_L2L3_3_buff_1 = aie.buffer(%mem_tile_3_1) {address = 32768 : i32, sym_name = "C_L2L3_3_buff_1"} : memref<16384xbf16> 
    %C_L2L3_3_prod_lock = aie.lock(%mem_tile_3_1, 4) {init = 8 : i32, sym_name = "C_L2L3_3_prod_lock"}
    %C_L2L3_3_cons_lock = aie.lock(%mem_tile_3_1, 5) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock"}
    %C_L1L2_3_3_buff_0 = aie.buffer(%tile_3_5) {address = 1024 : i32, sym_name = "C_L1L2_3_3_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_3_3_buff_1 = aie.buffer(%tile_3_5) {address = 9216 : i32, sym_name = "C_L1L2_3_3_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_3_3_prod_lock = aie.lock(%tile_3_5, 4) {init = 2 : i32, sym_name = "C_L1L2_3_3_prod_lock"}
    %C_L1L2_3_3_cons_lock = aie.lock(%tile_3_5, 5) {init = 0 : i32, sym_name = "C_L1L2_3_3_cons_lock"}
    %C_L1L2_3_2_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, sym_name = "C_L1L2_3_2_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_3_2_buff_1 = aie.buffer(%tile_3_4) {address = 9216 : i32, sym_name = "C_L1L2_3_2_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_3_2_prod_lock = aie.lock(%tile_3_4, 4) {init = 2 : i32, sym_name = "C_L1L2_3_2_prod_lock"}
    %C_L1L2_3_2_cons_lock = aie.lock(%tile_3_4, 5) {init = 0 : i32, sym_name = "C_L1L2_3_2_cons_lock"}
    %C_L1L2_3_1_buff_0 = aie.buffer(%tile_3_3) {address = 1024 : i32, sym_name = "C_L1L2_3_1_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_3_1_buff_1 = aie.buffer(%tile_3_3) {address = 9216 : i32, sym_name = "C_L1L2_3_1_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_3_1_prod_lock = aie.lock(%tile_3_3, 4) {init = 2 : i32, sym_name = "C_L1L2_3_1_prod_lock"}
    %C_L1L2_3_1_cons_lock = aie.lock(%tile_3_3, 5) {init = 0 : i32, sym_name = "C_L1L2_3_1_cons_lock"}
    %C_L1L2_3_0_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, sym_name = "C_L1L2_3_0_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_3_0_buff_1 = aie.buffer(%tile_3_2) {address = 9216 : i32, sym_name = "C_L1L2_3_0_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_3_0_prod_lock = aie.lock(%tile_3_2, 4) {init = 2 : i32, sym_name = "C_L1L2_3_0_prod_lock"}
    %C_L1L2_3_0_cons_lock = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "C_L1L2_3_0_cons_lock"}
    %C_L2L3_2_cons_prod_lock = aie.lock(%shim_noc_tile_2_0, 4) {init = 1 : i32, sym_name = "C_L2L3_2_cons_prod_lock"}
    %C_L2L3_2_cons_cons_lock = aie.lock(%shim_noc_tile_2_0, 5) {init = 0 : i32, sym_name = "C_L2L3_2_cons_cons_lock"}
    %C_L2L3_2_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, sym_name = "C_L2L3_2_buff_0"} : memref<16384xbf16> 
    %C_L2L3_2_buff_1 = aie.buffer(%mem_tile_2_1) {address = 32768 : i32, sym_name = "C_L2L3_2_buff_1"} : memref<16384xbf16> 
    %C_L2L3_2_prod_lock = aie.lock(%mem_tile_2_1, 4) {init = 8 : i32, sym_name = "C_L2L3_2_prod_lock"}
    %C_L2L3_2_cons_lock = aie.lock(%mem_tile_2_1, 5) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock"}
    %C_L1L2_2_3_buff_0 = aie.buffer(%tile_2_5) {address = 1024 : i32, sym_name = "C_L1L2_2_3_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_2_3_buff_1 = aie.buffer(%tile_2_5) {address = 9216 : i32, sym_name = "C_L1L2_2_3_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_2_3_prod_lock = aie.lock(%tile_2_5, 4) {init = 2 : i32, sym_name = "C_L1L2_2_3_prod_lock"}
    %C_L1L2_2_3_cons_lock = aie.lock(%tile_2_5, 5) {init = 0 : i32, sym_name = "C_L1L2_2_3_cons_lock"}
    %C_L1L2_2_2_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, sym_name = "C_L1L2_2_2_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_2_2_buff_1 = aie.buffer(%tile_2_4) {address = 9216 : i32, sym_name = "C_L1L2_2_2_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_2_2_prod_lock = aie.lock(%tile_2_4, 4) {init = 2 : i32, sym_name = "C_L1L2_2_2_prod_lock"}
    %C_L1L2_2_2_cons_lock = aie.lock(%tile_2_4, 5) {init = 0 : i32, sym_name = "C_L1L2_2_2_cons_lock"}
    %C_L1L2_2_1_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, sym_name = "C_L1L2_2_1_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_2_1_buff_1 = aie.buffer(%tile_2_3) {address = 9216 : i32, sym_name = "C_L1L2_2_1_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_2_1_prod_lock = aie.lock(%tile_2_3, 4) {init = 2 : i32, sym_name = "C_L1L2_2_1_prod_lock"}
    %C_L1L2_2_1_cons_lock = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "C_L1L2_2_1_cons_lock"}
    %C_L1L2_2_0_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, sym_name = "C_L1L2_2_0_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_2_0_buff_1 = aie.buffer(%tile_2_2) {address = 9216 : i32, sym_name = "C_L1L2_2_0_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_2_0_prod_lock = aie.lock(%tile_2_2, 4) {init = 2 : i32, sym_name = "C_L1L2_2_0_prod_lock"}
    %C_L1L2_2_0_cons_lock = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "C_L1L2_2_0_cons_lock"}
    %C_L2L3_1_cons_prod_lock = aie.lock(%shim_noc_tile_1_0, 4) {init = 1 : i32, sym_name = "C_L2L3_1_cons_prod_lock"}
    %C_L2L3_1_cons_cons_lock = aie.lock(%shim_noc_tile_1_0, 5) {init = 0 : i32, sym_name = "C_L2L3_1_cons_cons_lock"}
    %C_L2L3_1_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, sym_name = "C_L2L3_1_buff_0"} : memref<16384xbf16> 
    %C_L2L3_1_buff_1 = aie.buffer(%mem_tile_1_1) {address = 32768 : i32, sym_name = "C_L2L3_1_buff_1"} : memref<16384xbf16> 
    %C_L2L3_1_prod_lock = aie.lock(%mem_tile_1_1, 4) {init = 8 : i32, sym_name = "C_L2L3_1_prod_lock"}
    %C_L2L3_1_cons_lock = aie.lock(%mem_tile_1_1, 5) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock"}
    %C_L1L2_1_3_buff_0 = aie.buffer(%tile_1_5) {address = 1024 : i32, sym_name = "C_L1L2_1_3_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_1_3_buff_1 = aie.buffer(%tile_1_5) {address = 9216 : i32, sym_name = "C_L1L2_1_3_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_1_3_prod_lock = aie.lock(%tile_1_5, 4) {init = 2 : i32, sym_name = "C_L1L2_1_3_prod_lock"}
    %C_L1L2_1_3_cons_lock = aie.lock(%tile_1_5, 5) {init = 0 : i32, sym_name = "C_L1L2_1_3_cons_lock"}
    %C_L1L2_1_2_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, sym_name = "C_L1L2_1_2_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_1_2_buff_1 = aie.buffer(%tile_1_4) {address = 9216 : i32, sym_name = "C_L1L2_1_2_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_1_2_prod_lock = aie.lock(%tile_1_4, 4) {init = 2 : i32, sym_name = "C_L1L2_1_2_prod_lock"}
    %C_L1L2_1_2_cons_lock = aie.lock(%tile_1_4, 5) {init = 0 : i32, sym_name = "C_L1L2_1_2_cons_lock"}
    %C_L1L2_1_1_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, sym_name = "C_L1L2_1_1_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_1_1_buff_1 = aie.buffer(%tile_1_3) {address = 9216 : i32, sym_name = "C_L1L2_1_1_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_1_1_prod_lock = aie.lock(%tile_1_3, 4) {init = 2 : i32, sym_name = "C_L1L2_1_1_prod_lock"}
    %C_L1L2_1_1_cons_lock = aie.lock(%tile_1_3, 5) {init = 0 : i32, sym_name = "C_L1L2_1_1_cons_lock"}
    %C_L1L2_1_0_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, sym_name = "C_L1L2_1_0_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_1_0_buff_1 = aie.buffer(%tile_1_2) {address = 9216 : i32, sym_name = "C_L1L2_1_0_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_1_0_prod_lock = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "C_L1L2_1_0_prod_lock"}
    %C_L1L2_1_0_cons_lock = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "C_L1L2_1_0_cons_lock"}
    %C_L2L3_0_cons_prod_lock = aie.lock(%shim_noc_tile_0_0, 4) {init = 1 : i32, sym_name = "C_L2L3_0_cons_prod_lock"}
    %C_L2L3_0_cons_cons_lock = aie.lock(%shim_noc_tile_0_0, 5) {init = 0 : i32, sym_name = "C_L2L3_0_cons_cons_lock"}
    %C_L2L3_0_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, sym_name = "C_L2L3_0_buff_0"} : memref<16384xbf16> 
    %C_L2L3_0_buff_1 = aie.buffer(%mem_tile_0_1) {address = 32768 : i32, sym_name = "C_L2L3_0_buff_1"} : memref<16384xbf16> 
    %C_L2L3_0_prod_lock = aie.lock(%mem_tile_0_1, 4) {init = 8 : i32, sym_name = "C_L2L3_0_prod_lock"}
    %C_L2L3_0_cons_lock = aie.lock(%mem_tile_0_1, 5) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock"}
    %C_L1L2_0_3_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, sym_name = "C_L1L2_0_3_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_0_3_buff_1 = aie.buffer(%tile_0_5) {address = 9216 : i32, sym_name = "C_L1L2_0_3_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_0_3_prod_lock = aie.lock(%tile_0_5, 4) {init = 2 : i32, sym_name = "C_L1L2_0_3_prod_lock"}
    %C_L1L2_0_3_cons_lock = aie.lock(%tile_0_5, 5) {init = 0 : i32, sym_name = "C_L1L2_0_3_cons_lock"}
    %C_L1L2_0_2_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, sym_name = "C_L1L2_0_2_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_0_2_buff_1 = aie.buffer(%tile_0_4) {address = 9216 : i32, sym_name = "C_L1L2_0_2_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_0_2_prod_lock = aie.lock(%tile_0_4, 4) {init = 2 : i32, sym_name = "C_L1L2_0_2_prod_lock"}
    %C_L1L2_0_2_cons_lock = aie.lock(%tile_0_4, 5) {init = 0 : i32, sym_name = "C_L1L2_0_2_cons_lock"}
    %C_L1L2_0_1_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, sym_name = "C_L1L2_0_1_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_0_1_buff_1 = aie.buffer(%tile_0_3) {address = 9216 : i32, sym_name = "C_L1L2_0_1_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_0_1_prod_lock = aie.lock(%tile_0_3, 4) {init = 2 : i32, sym_name = "C_L1L2_0_1_prod_lock"}
    %C_L1L2_0_1_cons_lock = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "C_L1L2_0_1_cons_lock"}
    %C_L1L2_0_0_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, sym_name = "C_L1L2_0_0_buff_0"} : memref<64x64xbf16> 
    %C_L1L2_0_0_buff_1 = aie.buffer(%tile_0_2) {address = 9216 : i32, sym_name = "C_L1L2_0_0_buff_1"} : memref<64x64xbf16> 
    %C_L1L2_0_0_prod_lock = aie.lock(%tile_0_2, 4) {init = 2 : i32, sym_name = "C_L1L2_0_0_prod_lock"}
    %C_L1L2_0_0_cons_lock = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "C_L1L2_0_0_cons_lock"}
    %B_L2L1_3_0_cons_buff_0 = aie.buffer(%tile_3_2) {address = 17408 : i32, sym_name = "B_L2L1_3_0_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_3_0_cons_buff_1 = aie.buffer(%tile_3_2) {address = 25600 : i32, sym_name = "B_L2L1_3_0_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_3_0_cons_prod_lock = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "B_L2L1_3_0_cons_prod_lock"}
    %B_L2L1_3_0_cons_cons_lock = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "B_L2L1_3_0_cons_cons_lock"}
    %B_L2L1_3_1_cons_buff_0 = aie.buffer(%tile_3_3) {address = 17408 : i32, sym_name = "B_L2L1_3_1_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_3_1_cons_buff_1 = aie.buffer(%tile_3_3) {address = 25600 : i32, sym_name = "B_L2L1_3_1_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_3_1_cons_prod_lock = aie.lock(%tile_3_3, 2) {init = 2 : i32, sym_name = "B_L2L1_3_1_cons_prod_lock"}
    %B_L2L1_3_1_cons_cons_lock = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "B_L2L1_3_1_cons_cons_lock"}
    %B_L2L1_3_2_cons_buff_0 = aie.buffer(%tile_3_4) {address = 17408 : i32, sym_name = "B_L2L1_3_2_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_3_2_cons_buff_1 = aie.buffer(%tile_3_4) {address = 25600 : i32, sym_name = "B_L2L1_3_2_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_3_2_cons_prod_lock = aie.lock(%tile_3_4, 2) {init = 2 : i32, sym_name = "B_L2L1_3_2_cons_prod_lock"}
    %B_L2L1_3_2_cons_cons_lock = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "B_L2L1_3_2_cons_cons_lock"}
    %B_L2L1_3_3_cons_buff_0 = aie.buffer(%tile_3_5) {address = 17408 : i32, sym_name = "B_L2L1_3_3_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_3_3_cons_buff_1 = aie.buffer(%tile_3_5) {address = 25600 : i32, sym_name = "B_L2L1_3_3_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_3_3_cons_prod_lock = aie.lock(%tile_3_5, 2) {init = 2 : i32, sym_name = "B_L2L1_3_3_cons_prod_lock"}
    %B_L2L1_3_3_cons_cons_lock = aie.lock(%tile_3_5, 3) {init = 0 : i32, sym_name = "B_L2L1_3_3_cons_cons_lock"}
    %B_L3L2_3_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 65536 : i32, sym_name = "B_L3L2_3_cons_buff_0"} : memref<4096xbf16> 
    %B_L3L2_3_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 73728 : i32, sym_name = "B_L3L2_3_cons_buff_1"} : memref<4096xbf16> 
    %B_L3L2_3_cons_prod_lock = aie.lock(%mem_tile_3_1, 2) {init = 2 : i32, sym_name = "B_L3L2_3_cons_prod_lock"}
    %B_L3L2_3_cons_cons_lock = aie.lock(%mem_tile_3_1, 3) {init = 0 : i32, sym_name = "B_L3L2_3_cons_cons_lock"}
    %B_L3L2_3_prod_lock = aie.lock(%shim_noc_tile_3_0, 2) {init = 1 : i32, sym_name = "B_L3L2_3_prod_lock"}
    %B_L3L2_3_cons_lock = aie.lock(%shim_noc_tile_3_0, 3) {init = 0 : i32, sym_name = "B_L3L2_3_cons_lock"}
    %B_L2L1_2_0_cons_buff_0 = aie.buffer(%tile_2_2) {address = 17408 : i32, sym_name = "B_L2L1_2_0_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_2_0_cons_buff_1 = aie.buffer(%tile_2_2) {address = 25600 : i32, sym_name = "B_L2L1_2_0_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_2_0_cons_prod_lock = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "B_L2L1_2_0_cons_prod_lock"}
    %B_L2L1_2_0_cons_cons_lock = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "B_L2L1_2_0_cons_cons_lock"}
    %B_L2L1_2_1_cons_buff_0 = aie.buffer(%tile_2_3) {address = 17408 : i32, sym_name = "B_L2L1_2_1_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_2_1_cons_buff_1 = aie.buffer(%tile_2_3) {address = 25600 : i32, sym_name = "B_L2L1_2_1_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_2_1_cons_prod_lock = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "B_L2L1_2_1_cons_prod_lock"}
    %B_L2L1_2_1_cons_cons_lock = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "B_L2L1_2_1_cons_cons_lock"}
    %B_L2L1_2_2_cons_buff_0 = aie.buffer(%tile_2_4) {address = 17408 : i32, sym_name = "B_L2L1_2_2_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_2_2_cons_buff_1 = aie.buffer(%tile_2_4) {address = 25600 : i32, sym_name = "B_L2L1_2_2_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_2_2_cons_prod_lock = aie.lock(%tile_2_4, 2) {init = 2 : i32, sym_name = "B_L2L1_2_2_cons_prod_lock"}
    %B_L2L1_2_2_cons_cons_lock = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "B_L2L1_2_2_cons_cons_lock"}
    %B_L2L1_2_3_cons_buff_0 = aie.buffer(%tile_2_5) {address = 17408 : i32, sym_name = "B_L2L1_2_3_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_2_3_cons_buff_1 = aie.buffer(%tile_2_5) {address = 25600 : i32, sym_name = "B_L2L1_2_3_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_2_3_cons_prod_lock = aie.lock(%tile_2_5, 2) {init = 2 : i32, sym_name = "B_L2L1_2_3_cons_prod_lock"}
    %B_L2L1_2_3_cons_cons_lock = aie.lock(%tile_2_5, 3) {init = 0 : i32, sym_name = "B_L2L1_2_3_cons_cons_lock"}
    %B_L3L2_2_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 65536 : i32, sym_name = "B_L3L2_2_cons_buff_0"} : memref<4096xbf16> 
    %B_L3L2_2_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 73728 : i32, sym_name = "B_L3L2_2_cons_buff_1"} : memref<4096xbf16> 
    %B_L3L2_2_cons_prod_lock = aie.lock(%mem_tile_2_1, 2) {init = 2 : i32, sym_name = "B_L3L2_2_cons_prod_lock"}
    %B_L3L2_2_cons_cons_lock = aie.lock(%mem_tile_2_1, 3) {init = 0 : i32, sym_name = "B_L3L2_2_cons_cons_lock"}
    %B_L3L2_2_prod_lock = aie.lock(%shim_noc_tile_2_0, 2) {init = 1 : i32, sym_name = "B_L3L2_2_prod_lock"}
    %B_L3L2_2_cons_lock = aie.lock(%shim_noc_tile_2_0, 3) {init = 0 : i32, sym_name = "B_L3L2_2_cons_lock"}
    %B_L2L1_1_0_cons_buff_0 = aie.buffer(%tile_1_2) {address = 17408 : i32, sym_name = "B_L2L1_1_0_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_1_0_cons_buff_1 = aie.buffer(%tile_1_2) {address = 25600 : i32, sym_name = "B_L2L1_1_0_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_1_0_cons_prod_lock = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "B_L2L1_1_0_cons_prod_lock"}
    %B_L2L1_1_0_cons_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "B_L2L1_1_0_cons_cons_lock"}
    %B_L2L1_1_1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 17408 : i32, sym_name = "B_L2L1_1_1_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_1_1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 25600 : i32, sym_name = "B_L2L1_1_1_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_1_1_cons_prod_lock = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "B_L2L1_1_1_cons_prod_lock"}
    %B_L2L1_1_1_cons_cons_lock = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "B_L2L1_1_1_cons_cons_lock"}
    %B_L2L1_1_2_cons_buff_0 = aie.buffer(%tile_1_4) {address = 17408 : i32, sym_name = "B_L2L1_1_2_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_1_2_cons_buff_1 = aie.buffer(%tile_1_4) {address = 25600 : i32, sym_name = "B_L2L1_1_2_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_1_2_cons_prod_lock = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "B_L2L1_1_2_cons_prod_lock"}
    %B_L2L1_1_2_cons_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "B_L2L1_1_2_cons_cons_lock"}
    %B_L2L1_1_3_cons_buff_0 = aie.buffer(%tile_1_5) {address = 17408 : i32, sym_name = "B_L2L1_1_3_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_1_3_cons_buff_1 = aie.buffer(%tile_1_5) {address = 25600 : i32, sym_name = "B_L2L1_1_3_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_1_3_cons_prod_lock = aie.lock(%tile_1_5, 2) {init = 2 : i32, sym_name = "B_L2L1_1_3_cons_prod_lock"}
    %B_L2L1_1_3_cons_cons_lock = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "B_L2L1_1_3_cons_cons_lock"}
    %B_L3L2_1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 65536 : i32, sym_name = "B_L3L2_1_cons_buff_0"} : memref<4096xbf16> 
    %B_L3L2_1_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 73728 : i32, sym_name = "B_L3L2_1_cons_buff_1"} : memref<4096xbf16> 
    %B_L3L2_1_cons_prod_lock = aie.lock(%mem_tile_1_1, 2) {init = 2 : i32, sym_name = "B_L3L2_1_cons_prod_lock"}
    %B_L3L2_1_cons_cons_lock = aie.lock(%mem_tile_1_1, 3) {init = 0 : i32, sym_name = "B_L3L2_1_cons_cons_lock"}
    %B_L3L2_1_prod_lock = aie.lock(%shim_noc_tile_1_0, 2) {init = 1 : i32, sym_name = "B_L3L2_1_prod_lock"}
    %B_L3L2_1_cons_lock = aie.lock(%shim_noc_tile_1_0, 3) {init = 0 : i32, sym_name = "B_L3L2_1_cons_lock"}
    %B_L2L1_0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 17408 : i32, sym_name = "B_L2L1_0_0_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 25600 : i32, sym_name = "B_L2L1_0_0_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_0_0_cons_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "B_L2L1_0_0_cons_prod_lock"}
    %B_L2L1_0_0_cons_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "B_L2L1_0_0_cons_cons_lock"}
    %B_L2L1_0_1_cons_buff_0 = aie.buffer(%tile_0_3) {address = 17408 : i32, sym_name = "B_L2L1_0_1_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_0_1_cons_buff_1 = aie.buffer(%tile_0_3) {address = 25600 : i32, sym_name = "B_L2L1_0_1_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_0_1_cons_prod_lock = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "B_L2L1_0_1_cons_prod_lock"}
    %B_L2L1_0_1_cons_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "B_L2L1_0_1_cons_cons_lock"}
    %B_L2L1_0_2_cons_buff_0 = aie.buffer(%tile_0_4) {address = 17408 : i32, sym_name = "B_L2L1_0_2_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_0_2_cons_buff_1 = aie.buffer(%tile_0_4) {address = 25600 : i32, sym_name = "B_L2L1_0_2_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_0_2_cons_prod_lock = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "B_L2L1_0_2_cons_prod_lock"}
    %B_L2L1_0_2_cons_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "B_L2L1_0_2_cons_cons_lock"}
    %B_L2L1_0_3_cons_buff_0 = aie.buffer(%tile_0_5) {address = 17408 : i32, sym_name = "B_L2L1_0_3_cons_buff_0"} : memref<64x64xbf16> 
    %B_L2L1_0_3_cons_buff_1 = aie.buffer(%tile_0_5) {address = 25600 : i32, sym_name = "B_L2L1_0_3_cons_buff_1"} : memref<64x64xbf16> 
    %B_L2L1_0_3_cons_prod_lock = aie.lock(%tile_0_5, 2) {init = 2 : i32, sym_name = "B_L2L1_0_3_cons_prod_lock"}
    %B_L2L1_0_3_cons_cons_lock = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "B_L2L1_0_3_cons_cons_lock"}
    %B_L3L2_0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 65536 : i32, sym_name = "B_L3L2_0_cons_buff_0"} : memref<4096xbf16> 
    %B_L3L2_0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 73728 : i32, sym_name = "B_L3L2_0_cons_buff_1"} : memref<4096xbf16> 
    %B_L3L2_0_cons_prod_lock = aie.lock(%mem_tile_0_1, 2) {init = 2 : i32, sym_name = "B_L3L2_0_cons_prod_lock"}
    %B_L3L2_0_cons_cons_lock = aie.lock(%mem_tile_0_1, 3) {init = 0 : i32, sym_name = "B_L3L2_0_cons_cons_lock"}
    %B_L3L2_0_prod_lock = aie.lock(%shim_noc_tile_0_0, 2) {init = 1 : i32, sym_name = "B_L3L2_0_prod_lock"}
    %B_L3L2_0_cons_lock = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "B_L3L2_0_cons_lock"}
    %A_L3L2_3_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 81920 : i32, sym_name = "A_L3L2_3_cons_buff_0"} : memref<4096xbf16> 
    %A_L3L2_3_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 90112 : i32, sym_name = "A_L3L2_3_cons_buff_1"} : memref<4096xbf16> 
    %A_L3L2_3_cons_prod_lock = aie.lock(%mem_tile_3_1, 0) {init = 2 : i32, sym_name = "A_L3L2_3_cons_prod_lock"}
    %A_L3L2_3_cons_cons_lock = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "A_L3L2_3_cons_cons_lock"}
    %A_L3L2_3_prod_lock = aie.lock(%shim_noc_tile_3_0, 0) {init = 1 : i32, sym_name = "A_L3L2_3_prod_lock"}
    %A_L3L2_3_cons_lock = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "A_L3L2_3_cons_lock"}
    %A_L3L2_2_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 81920 : i32, sym_name = "A_L3L2_2_cons_buff_0"} : memref<4096xbf16> 
    %A_L3L2_2_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 90112 : i32, sym_name = "A_L3L2_2_cons_buff_1"} : memref<4096xbf16> 
    %A_L3L2_2_cons_prod_lock = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "A_L3L2_2_cons_prod_lock"}
    %A_L3L2_2_cons_cons_lock = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "A_L3L2_2_cons_cons_lock"}
    %A_L3L2_2_prod_lock = aie.lock(%shim_noc_tile_2_0, 0) {init = 1 : i32, sym_name = "A_L3L2_2_prod_lock"}
    %A_L3L2_2_cons_lock = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "A_L3L2_2_cons_lock"}
    %A_L3L2_1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 81920 : i32, sym_name = "A_L3L2_1_cons_buff_0"} : memref<4096xbf16> 
    %A_L3L2_1_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 90112 : i32, sym_name = "A_L3L2_1_cons_buff_1"} : memref<4096xbf16> 
    %A_L3L2_1_cons_prod_lock = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "A_L3L2_1_cons_prod_lock"}
    %A_L3L2_1_cons_cons_lock = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "A_L3L2_1_cons_cons_lock"}
    %A_L3L2_1_prod_lock = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "A_L3L2_1_prod_lock"}
    %A_L3L2_1_cons_lock = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "A_L3L2_1_cons_lock"}
    %A_L3L2_0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 81920 : i32, sym_name = "A_L3L2_0_cons_buff_0"} : memref<4096xbf16> 
    %A_L3L2_0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 90112 : i32, sym_name = "A_L3L2_0_cons_buff_1"} : memref<4096xbf16> 
    %A_L3L2_0_cons_prod_lock = aie.lock(%mem_tile_0_1, 0) {init = 2 : i32, sym_name = "A_L3L2_0_cons_prod_lock"}
    %A_L3L2_0_cons_cons_lock = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "A_L3L2_0_cons_cons_lock"}
    %A_L3L2_0_prod_lock = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "A_L3L2_0_prod_lock"}
    %A_L3L2_0_cons_lock = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "A_L3L2_0_cons_lock"}
    %A_L2L1_3_0_cons_buff_0 = aie.buffer(%tile_0_5) {address = 33792 : i32, sym_name = "A_L2L1_3_0_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_3_0_cons_buff_1 = aie.buffer(%tile_0_5) {address = 41984 : i32, sym_name = "A_L2L1_3_0_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_3_0_cons_prod_lock = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_0_cons_prod_lock"}
    %A_L2L1_3_0_cons_cons_lock = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_0_cons_cons_lock"}
    %A_L2L1_3_1_cons_buff_0 = aie.buffer(%tile_1_5) {address = 33792 : i32, sym_name = "A_L2L1_3_1_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_3_1_cons_buff_1 = aie.buffer(%tile_1_5) {address = 41984 : i32, sym_name = "A_L2L1_3_1_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_3_1_cons_prod_lock = aie.lock(%tile_1_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_1_cons_prod_lock"}
    %A_L2L1_3_1_cons_cons_lock = aie.lock(%tile_1_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_1_cons_cons_lock"}
    %A_L2L1_3_2_cons_buff_0 = aie.buffer(%tile_2_5) {address = 33792 : i32, sym_name = "A_L2L1_3_2_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_3_2_cons_buff_1 = aie.buffer(%tile_2_5) {address = 41984 : i32, sym_name = "A_L2L1_3_2_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_3_2_cons_prod_lock = aie.lock(%tile_2_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_2_cons_prod_lock"}
    %A_L2L1_3_2_cons_cons_lock = aie.lock(%tile_2_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_2_cons_cons_lock"}
    %A_L2L1_3_3_cons_buff_0 = aie.buffer(%tile_3_5) {address = 33792 : i32, sym_name = "A_L2L1_3_3_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_3_3_cons_buff_1 = aie.buffer(%tile_3_5) {address = 41984 : i32, sym_name = "A_L2L1_3_3_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_3_3_cons_prod_lock = aie.lock(%tile_3_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_3_cons_prod_lock"}
    %A_L2L1_3_3_cons_cons_lock = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_3_cons_cons_lock"}
    %A_L2L1_2_0_cons_buff_0 = aie.buffer(%tile_0_4) {address = 33792 : i32, sym_name = "A_L2L1_2_0_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_2_0_cons_buff_1 = aie.buffer(%tile_0_4) {address = 41984 : i32, sym_name = "A_L2L1_2_0_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_2_0_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_0_cons_prod_lock"}
    %A_L2L1_2_0_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_0_cons_cons_lock"}
    %A_L2L1_2_1_cons_buff_0 = aie.buffer(%tile_1_4) {address = 33792 : i32, sym_name = "A_L2L1_2_1_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_2_1_cons_buff_1 = aie.buffer(%tile_1_4) {address = 41984 : i32, sym_name = "A_L2L1_2_1_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_2_1_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_1_cons_prod_lock"}
    %A_L2L1_2_1_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_1_cons_cons_lock"}
    %A_L2L1_2_2_cons_buff_0 = aie.buffer(%tile_2_4) {address = 33792 : i32, sym_name = "A_L2L1_2_2_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_2_2_cons_buff_1 = aie.buffer(%tile_2_4) {address = 41984 : i32, sym_name = "A_L2L1_2_2_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_2_2_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_2_cons_prod_lock"}
    %A_L2L1_2_2_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_2_cons_cons_lock"}
    %A_L2L1_2_3_cons_buff_0 = aie.buffer(%tile_3_4) {address = 33792 : i32, sym_name = "A_L2L1_2_3_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_2_3_cons_buff_1 = aie.buffer(%tile_3_4) {address = 41984 : i32, sym_name = "A_L2L1_2_3_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_2_3_cons_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_3_cons_prod_lock"}
    %A_L2L1_2_3_cons_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_3_cons_cons_lock"}
    %A_L2L1_1_0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 33792 : i32, sym_name = "A_L2L1_1_0_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_1_0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 41984 : i32, sym_name = "A_L2L1_1_0_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_1_0_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_0_cons_prod_lock"}
    %A_L2L1_1_0_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_0_cons_cons_lock"}
    %A_L2L1_1_1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 33792 : i32, sym_name = "A_L2L1_1_1_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_1_1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 41984 : i32, sym_name = "A_L2L1_1_1_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_1_1_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_1_cons_prod_lock"}
    %A_L2L1_1_1_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_1_cons_cons_lock"}
    %A_L2L1_1_2_cons_buff_0 = aie.buffer(%tile_2_3) {address = 33792 : i32, sym_name = "A_L2L1_1_2_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_1_2_cons_buff_1 = aie.buffer(%tile_2_3) {address = 41984 : i32, sym_name = "A_L2L1_1_2_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_1_2_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_2_cons_prod_lock"}
    %A_L2L1_1_2_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_2_cons_cons_lock"}
    %A_L2L1_1_3_cons_buff_0 = aie.buffer(%tile_3_3) {address = 33792 : i32, sym_name = "A_L2L1_1_3_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_1_3_cons_buff_1 = aie.buffer(%tile_3_3) {address = 41984 : i32, sym_name = "A_L2L1_1_3_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_1_3_cons_prod_lock = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_3_cons_prod_lock"}
    %A_L2L1_1_3_cons_cons_lock = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_3_cons_cons_lock"}
    %A_L2L1_0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 33792 : i32, sym_name = "A_L2L1_0_0_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 41984 : i32, sym_name = "A_L2L1_0_0_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_0_0_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_0_cons_prod_lock"}
    %A_L2L1_0_0_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_0_cons_cons_lock"}
    %A_L2L1_0_1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 33792 : i32, sym_name = "A_L2L1_0_1_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_0_1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 41984 : i32, sym_name = "A_L2L1_0_1_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_0_1_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_1_cons_prod_lock"}
    %A_L2L1_0_1_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_1_cons_cons_lock"}
    %A_L2L1_0_2_cons_buff_0 = aie.buffer(%tile_2_2) {address = 33792 : i32, sym_name = "A_L2L1_0_2_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_0_2_cons_buff_1 = aie.buffer(%tile_2_2) {address = 41984 : i32, sym_name = "A_L2L1_0_2_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_0_2_cons_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_2_cons_prod_lock"}
    %A_L2L1_0_2_cons_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_2_cons_cons_lock"}
    %A_L2L1_0_3_cons_buff_0 = aie.buffer(%tile_3_2) {address = 33792 : i32, sym_name = "A_L2L1_0_3_cons_buff_0"} : memref<64x64xbf16> 
    %A_L2L1_0_3_cons_buff_1 = aie.buffer(%tile_3_2) {address = 41984 : i32, sym_name = "A_L2L1_0_3_cons_buff_1"} : memref<64x64xbf16> 
    %A_L2L1_0_3_cons_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_3_cons_prod_lock"}
    %A_L2L1_0_3_cons_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_3_cons_cons_lock"}
    %switchbox_0_1 = aie.switchbox(%mem_tile_0_1) {
      aie.connect<DMA : 0, North : 1>
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<North : 1, DMA : 2>
      aie.connect<North : 0, DMA : 3>
      aie.connect<North : 3, DMA : 4>
      aie.connect<North : 2, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 1, East : 2>
      aie.connect<South : 1, DMA : 0>
      aie.connect<East : 3, North : 5>
      aie.connect<East : 0, North : 0>
      aie.connect<South : 5, North : 3>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 3>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_1_2 = aie.switchbox(%tile_1_2) {
      aie.connect<West : 2, East : 1>
      aie.connect<West : 2, DMA : 0>
      aie.connect<South : 1, East : 2>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, West : 3>
      aie.connect<East : 3, West : 0>
      aie.connect<South : 5, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 3>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_2_2 = aie.switchbox(%tile_2_2) {
      aie.connect<West : 1, East : 2>
      aie.connect<West : 1, DMA : 0>
      aie.connect<West : 2, North : 3>
      aie.connect<South : 1, North : 5>
      aie.connect<South : 1, West : 3>
      aie.connect<East : 1, North : 0>
      aie.connect<South : 5, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 3>
      aie.connect<North : 3, South : 2>
      aie.connect<North : 0, South : 0>
    }
    %switchbox_3_2 = aie.switchbox(%tile_3_2) {
      aie.connect<West : 2, DMA : 0>
      aie.connect<South : 1, North : 4>
      aie.connect<South : 1, West : 1>
      aie.connect<South : 5, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 2>
      aie.connect<North : 0, South : 3>
      aie.connect<North : 2, South : 0>
    }
    %switchbox_0_3 = aie.switchbox(%tile_0_3) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 0, North : 0>
      aie.connect<South : 3, North : 1>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_1_1 = aie.switchbox(%mem_tile_1_1) {
      aie.connect<DMA : 0, North : 1>
      aie.connect<South : 1, DMA : 0>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<North : 1, DMA : 2>
      aie.connect<North : 0, DMA : 3>
      aie.connect<North : 3, DMA : 4>
      aie.connect<North : 2, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_1_3 = aie.switchbox(%tile_1_3) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<East : 0, North : 3>
      aie.connect<East : 3, North : 4>
      aie.connect<South : 1, North : 2>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 3>
    }
    %switchbox_2_3 = aie.switchbox(%tile_2_3) {
      aie.connect<South : 3, East : 2>
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 5, North : 5>
      aie.connect<South : 5, West : 0>
      aie.connect<South : 0, West : 3>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 3>
      aie.connect<North : 3, South : 0>
    }
    %switchbox_3_3 = aie.switchbox(%tile_3_3) {
      aie.connect<West : 2, DMA : 0>
      aie.connect<South : 4, North : 3>
      aie.connect<South : 1, North : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_0_4 = aie.switchbox(%tile_0_4) {
      aie.connect<South : 0, DMA : 0>
      aie.connect<East : 3, North : 2>
      aie.connect<South : 1, North : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 0>
    }
    %switchbox_1_4 = aie.switchbox(%tile_1_4) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 4, North : 5>
      aie.connect<South : 4, West : 3>
      aie.connect<South : 2, North : 1>
      aie.connect<South : 2, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_2_1 = aie.switchbox(%mem_tile_2_1) {
      aie.connect<DMA : 0, North : 1>
      aie.connect<South : 1, DMA : 0>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<North : 1, DMA : 2>
      aie.connect<North : 3, DMA : 3>
      aie.connect<North : 2, DMA : 4>
      aie.connect<North : 0, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_2_4 = aie.switchbox(%tile_2_4) {
      aie.connect<South : 5, East : 2>
      aie.connect<South : 5, DMA : 0>
      aie.connect<East : 1, North : 4>
      aie.connect<South : 3, North : 3>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_3_4 = aie.switchbox(%tile_3_4) {
      aie.connect<West : 2, DMA : 0>
      aie.connect<South : 3, North : 4>
      aie.connect<South : 3, West : 1>
      aie.connect<South : 0, North : 1>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_0_5 = aie.switchbox(%tile_0_5) {
      aie.connect<South : 2, DMA : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_1_5 = aie.switchbox(%tile_1_5) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_2_5 = aie.switchbox(%tile_2_5) {
      aie.connect<South : 4, DMA : 0>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_3_1 = aie.switchbox(%mem_tile_3_1) {
      aie.connect<DMA : 0, North : 1>
      aie.connect<South : 0, DMA : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<North : 1, DMA : 2>
      aie.connect<North : 2, DMA : 3>
      aie.connect<North : 3, DMA : 4>
      aie.connect<North : 0, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_3_5 = aie.switchbox(%tile_3_5) {
      aie.connect<South : 4, DMA : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_0_0 = aie.switchbox(%shim_noc_tile_0_0) {
      aie.connect<South : 3, North : 3>
      aie.connect<South : 7, North : 5>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_0_0 = aie.shim_mux(%shim_noc_tile_0_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_1_0 = aie.switchbox(%shim_noc_tile_1_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<South : 7, North : 5>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_1_0 = aie.shim_mux(%shim_noc_tile_1_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_2_0 = aie.switchbox(%shim_noc_tile_2_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<South : 7, North : 5>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_2_0 = aie.shim_mux(%shim_noc_tile_2_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_3_0 = aie.switchbox(%shim_noc_tile_3_0) {
      aie.connect<South : 3, North : 0>
      aie.connect<South : 7, North : 1>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_3_0 = aie.shim_mux(%shim_noc_tile_3_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
      aie.connect<North : 2, DMA : 0>
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_0_0_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_0_0_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_0_0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_0_0_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_0_0_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_1_0_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_1_0_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_1_0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_1_0_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_1_0_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_2_0_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_2_0_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_2_0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_2_0_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_2_0_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_3_0_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_3_0_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_3_0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_3_0_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_3_0_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_0_1_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_0_1_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_0_1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_0_1_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_0_1_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_1_1_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_1_1_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_1_1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_1_1_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_1_1_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_2_1_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_2_1_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_2_1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_2_1_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_2_1_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_3_1_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_3_1_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_3_1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_3_1_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_3_1_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_0_2_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_0_2_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_0_2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_0_2_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_0_2_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_1_2_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_1_2_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_1_2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_1_2_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_1_2_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_2_2_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_2_2_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_2_2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_2_2_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_2_2_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_3_2_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_3_2_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_3_2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_3_2_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_3_2_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_0_3_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_0_3_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_0_3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_0_3_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_0_3_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_1_3_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_1_3_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_1_3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_1_3_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_1_3_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_2_3_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_2_3_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_2_3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_2_3_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_2_3_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_3_3_buff_0) : (memref<64x64xbf16>) -> ()
      %c0_2 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_3 = arith.constant 1 : index
      %c2_4 = arith.constant 2 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock, Release, 1)
      %6 = arith.addi %4, %c2_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%C_L1L2_3_3_cons_lock, Release, 1)
      aie.use_lock(%C_L1L2_3_3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_bf16(%C_L1L2_3_3_buff_1) : (memref<64x64xbf16>) -> ()
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%7: index):  // 2 preds: ^bb7, ^bb9
      %8 = arith.cmpi slt, %7, %c64_6 : index
      cf.cond_br %8, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matmul_bf16_bf16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb8(%9 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%C_L1L2_3_3_cons_lock, Release, 1)
      %10 = arith.addi %2, %c2 : index
      cf.br ^bb3(%10 : index)
    ^bb11:  // pred: ^bb3
      %11 = arith.addi %0, %c1 : index
      cf.br ^bb1(%11 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "mm_64x64x64.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<8388608xbf16>, %arg1: memref<4194304xbf16>, %arg2: memref<2097152xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 4, 256, 64][0, 256, 14336, 1]) {id = 0 : i64, metadata = @C_L2L3_0} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][4, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @A_L3L2_0} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 2 : i64, metadata = @B_L3L2_0} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 64][1, 4, 256, 64][0, 256, 14336, 1]) {id = 0 : i64, metadata = @C_L2L3_1} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 262144][4, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @A_L3L2_1} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 64][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 2 : i64, metadata = @B_L3L2_1} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 128][1, 4, 256, 64][0, 256, 14336, 1]) {id = 0 : i64, metadata = @C_L2L3_2} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 524288][4, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @A_L3L2_2} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 128][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 2 : i64, metadata = @B_L3L2_2} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 192][1, 4, 256, 64][0, 256, 14336, 1]) {id = 0 : i64, metadata = @C_L2L3_3} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 786432][4, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @A_L3L2_3} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 192][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 2 : i64, metadata = @B_L3L2_3} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3670016][1, 4, 256, 64][0, 256, 14336, 1]) {id = 3 : i64, metadata = @C_L2L3_0} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1048576][4, 64, 64, 64][0, 64, 4096, 1]) {id = 4 : i64, metadata = @A_L3L2_0} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 5 : i64, metadata = @B_L3L2_0} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3670080][1, 4, 256, 64][0, 256, 14336, 1]) {id = 3 : i64, metadata = @C_L2L3_1} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1310720][4, 64, 64, 64][0, 64, 4096, 1]) {id = 4 : i64, metadata = @A_L3L2_1} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 64][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 5 : i64, metadata = @B_L3L2_1} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3670144][1, 4, 256, 64][0, 256, 14336, 1]) {id = 3 : i64, metadata = @C_L2L3_2} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1572864][4, 64, 64, 64][0, 64, 4096, 1]) {id = 4 : i64, metadata = @A_L3L2_2} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 128][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 5 : i64, metadata = @B_L3L2_2} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3670208][1, 4, 256, 64][0, 256, 14336, 1]) {id = 3 : i64, metadata = @C_L2L3_3} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 1835008][4, 64, 64, 64][0, 64, 4096, 1]) {id = 4 : i64, metadata = @A_L3L2_3} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 192][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 5 : i64, metadata = @B_L3L2_3} : memref<4194304xbf16>
      aiex.npu.dma_wait {symbol = @C_L2L3_0}
      aiex.npu.dma_wait {symbol = @C_L2L3_1}
      aiex.npu.dma_wait {symbol = @C_L2L3_2}
      aiex.npu.dma_wait {symbol = @C_L2L3_3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7340032][1, 4, 256, 64][0, 256, 14336, 1]) {id = 8 : i64, metadata = @C_L2L3_0} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2097152][4, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @A_L3L2_0} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 10 : i64, metadata = @B_L3L2_0} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7340096][1, 4, 256, 64][0, 256, 14336, 1]) {id = 8 : i64, metadata = @C_L2L3_1} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2359296][4, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @A_L3L2_1} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 64][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 10 : i64, metadata = @B_L3L2_1} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7340160][1, 4, 256, 64][0, 256, 14336, 1]) {id = 8 : i64, metadata = @C_L2L3_2} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2621440][4, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @A_L3L2_2} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 128][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 10 : i64, metadata = @B_L3L2_2} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7340224][1, 4, 256, 64][0, 256, 14336, 1]) {id = 8 : i64, metadata = @C_L2L3_3} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2883584][4, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @A_L3L2_3} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 192][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 10 : i64, metadata = @B_L3L2_3} : memref<4194304xbf16>
      aiex.npu.dma_wait {symbol = @C_L2L3_0}
      aiex.npu.dma_wait {symbol = @C_L2L3_1}
      aiex.npu.dma_wait {symbol = @C_L2L3_2}
      aiex.npu.dma_wait {symbol = @C_L2L3_3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11010048][1, 4, 256, 64][0, 256, 14336, 1]) {id = 11 : i64, metadata = @C_L2L3_0} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3145728][4, 64, 64, 64][0, 64, 4096, 1]) {id = 12 : i64, metadata = @A_L3L2_0} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 13 : i64, metadata = @B_L3L2_0} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11010112][1, 4, 256, 64][0, 256, 14336, 1]) {id = 11 : i64, metadata = @C_L2L3_1} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3407872][4, 64, 64, 64][0, 64, 4096, 1]) {id = 12 : i64, metadata = @A_L3L2_1} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 64][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 13 : i64, metadata = @B_L3L2_1} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11010176][1, 4, 256, 64][0, 256, 14336, 1]) {id = 11 : i64, metadata = @C_L2L3_2} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3670016][4, 64, 64, 64][0, 64, 4096, 1]) {id = 12 : i64, metadata = @A_L3L2_2} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 128][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 13 : i64, metadata = @B_L3L2_2} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11010240][1, 4, 256, 64][0, 256, 14336, 1]) {id = 11 : i64, metadata = @C_L2L3_3} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 3932160][4, 64, 64, 64][0, 64, 4096, 1]) {id = 12 : i64, metadata = @A_L3L2_3} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 192][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 13 : i64, metadata = @B_L3L2_3} : memref<4194304xbf16>
      aiex.npu.dma_wait {symbol = @C_L2L3_0}
      aiex.npu.dma_wait {symbol = @C_L2L3_1}
      aiex.npu.dma_wait {symbol = @C_L2L3_2}
      aiex.npu.dma_wait {symbol = @C_L2L3_3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14680064][1, 4, 256, 64][0, 256, 14336, 1]) {id = 0 : i64, metadata = @C_L2L3_0} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4194304][4, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @A_L3L2_0} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 2 : i64, metadata = @B_L3L2_0} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14680128][1, 4, 256, 64][0, 256, 14336, 1]) {id = 0 : i64, metadata = @C_L2L3_1} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4456448][4, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @A_L3L2_1} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 64][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 2 : i64, metadata = @B_L3L2_1} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14680192][1, 4, 256, 64][0, 256, 14336, 1]) {id = 0 : i64, metadata = @C_L2L3_2} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4718592][4, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @A_L3L2_2} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 128][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 2 : i64, metadata = @B_L3L2_2} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14680256][1, 4, 256, 64][0, 256, 14336, 1]) {id = 0 : i64, metadata = @C_L2L3_3} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4980736][4, 64, 64, 64][0, 64, 4096, 1]) {id = 1 : i64, metadata = @A_L3L2_3} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 192][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 2 : i64, metadata = @B_L3L2_3} : memref<4194304xbf16>
      aiex.npu.dma_wait {symbol = @C_L2L3_0}
      aiex.npu.dma_wait {symbol = @C_L2L3_1}
      aiex.npu.dma_wait {symbol = @C_L2L3_2}
      aiex.npu.dma_wait {symbol = @C_L2L3_3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 18350080][1, 4, 256, 64][0, 256, 14336, 1]) {id = 3 : i64, metadata = @C_L2L3_0} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5242880][4, 64, 64, 64][0, 64, 4096, 1]) {id = 4 : i64, metadata = @A_L3L2_0} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 5 : i64, metadata = @B_L3L2_0} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 18350144][1, 4, 256, 64][0, 256, 14336, 1]) {id = 3 : i64, metadata = @C_L2L3_1} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5505024][4, 64, 64, 64][0, 64, 4096, 1]) {id = 4 : i64, metadata = @A_L3L2_1} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 64][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 5 : i64, metadata = @B_L3L2_1} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 18350208][1, 4, 256, 64][0, 256, 14336, 1]) {id = 3 : i64, metadata = @C_L2L3_2} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 5767168][4, 64, 64, 64][0, 64, 4096, 1]) {id = 4 : i64, metadata = @A_L3L2_2} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 128][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 5 : i64, metadata = @B_L3L2_2} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 18350272][1, 4, 256, 64][0, 256, 14336, 1]) {id = 3 : i64, metadata = @C_L2L3_3} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6029312][4, 64, 64, 64][0, 64, 4096, 1]) {id = 4 : i64, metadata = @A_L3L2_3} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 192][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 5 : i64, metadata = @B_L3L2_3} : memref<4194304xbf16>
      aiex.npu.dma_wait {symbol = @C_L2L3_0}
      aiex.npu.dma_wait {symbol = @C_L2L3_1}
      aiex.npu.dma_wait {symbol = @C_L2L3_2}
      aiex.npu.dma_wait {symbol = @C_L2L3_3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 22020096][1, 4, 256, 64][0, 256, 14336, 1]) {id = 8 : i64, metadata = @C_L2L3_0} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6291456][4, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @A_L3L2_0} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 10 : i64, metadata = @B_L3L2_0} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 22020160][1, 4, 256, 64][0, 256, 14336, 1]) {id = 8 : i64, metadata = @C_L2L3_1} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6553600][4, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @A_L3L2_1} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 64][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 10 : i64, metadata = @B_L3L2_1} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 22020224][1, 4, 256, 64][0, 256, 14336, 1]) {id = 8 : i64, metadata = @C_L2L3_2} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6815744][4, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @A_L3L2_2} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 128][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 10 : i64, metadata = @B_L3L2_2} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 22020288][1, 4, 256, 64][0, 256, 14336, 1]) {id = 8 : i64, metadata = @C_L2L3_3} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7077888][4, 64, 64, 64][0, 64, 4096, 1]) {id = 9 : i64, metadata = @A_L3L2_3} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 192][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 10 : i64, metadata = @B_L3L2_3} : memref<4194304xbf16>
      aiex.npu.dma_wait {symbol = @C_L2L3_0}
      aiex.npu.dma_wait {symbol = @C_L2L3_1}
      aiex.npu.dma_wait {symbol = @C_L2L3_2}
      aiex.npu.dma_wait {symbol = @C_L2L3_3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 25690112][1, 4, 256, 64][0, 256, 14336, 1]) {id = 11 : i64, metadata = @C_L2L3_0} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7340032][4, 64, 64, 64][0, 64, 4096, 1]) {id = 12 : i64, metadata = @A_L3L2_0} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 13 : i64, metadata = @B_L3L2_0} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 25690176][1, 4, 256, 64][0, 256, 14336, 1]) {id = 11 : i64, metadata = @C_L2L3_1} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7602176][4, 64, 64, 64][0, 64, 4096, 1]) {id = 12 : i64, metadata = @A_L3L2_1} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 64][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 13 : i64, metadata = @B_L3L2_1} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 25690240][1, 4, 256, 64][0, 256, 14336, 1]) {id = 11 : i64, metadata = @C_L2L3_2} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 7864320][4, 64, 64, 64][0, 64, 4096, 1]) {id = 12 : i64, metadata = @A_L3L2_2} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 128][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 13 : i64, metadata = @B_L3L2_2} : memref<4194304xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 25690304][1, 4, 256, 64][0, 256, 14336, 1]) {id = 11 : i64, metadata = @C_L2L3_3} : memref<2097152xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8126464][4, 64, 64, 64][0, 64, 4096, 1]) {id = 12 : i64, metadata = @A_L3L2_3} : memref<8388608xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 192][4, 64, 64, 64][256, 917504, 14336, 1]) {id = 13 : i64, metadata = @B_L3L2_3} : memref<4194304xbf16>
      aiex.npu.dma_wait {symbol = @C_L2L3_0}
      aiex.npu.dma_wait {symbol = @C_L2L3_1}
      aiex.npu.dma_wait {symbol = @C_L2L3_2}
      aiex.npu.dma_wait {symbol = @C_L2L3_3}
      aiex.npu.dma_wait {symbol = @C_L2L3_0}
      aiex.npu.dma_wait {symbol = @C_L2L3_1}
      aiex.npu.dma_wait {symbol = @C_L2L3_2}
      aiex.npu.dma_wait {symbol = @C_L2L3_3}
    }
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L3L2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_0 : memref<4096xbf16>, 0, 4096, [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_0_cons_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_1 : memref<4096xbf16>, 0, 4096, [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_0_cons_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_0 : memref<4096xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_0_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_1 : memref<4096xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_0_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_0_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<16384xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_0_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<16384xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_0_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<16384xbf16>, 4096, 4096) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_0_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<16384xbf16>, 4096, 4096) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 4, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%C_L2L3_0_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<16384xbf16>, 8192, 4096) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_0_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<16384xbf16>, 8192, 4096) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(S2MM, 5, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%C_L2L3_0_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<16384xbf16>, 12288, 4096) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_0_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<16384xbf16>, 12288, 4096) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(MM2S, 2, ^bb25, ^bb27)
    ^bb25:  // 2 preds: ^bb24, ^bb26
      aie.use_lock(%C_L2L3_0_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<16384xbf16>, 0, 16384, [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock, Release, 4)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_0_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<16384xbf16>, 0, 16384, [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock, Release, 4)
      aie.next_bd ^bb25
    ^bb27:  // pred: ^bb24
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_0_0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_0_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_0_0_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_0_0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_0_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_0_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_1_0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_0_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_1_0_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_1_0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_0_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_0_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_2_0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_0_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_2_0_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_2_0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_0_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_0_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_3_0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_0_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_3_0_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_3_0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_0_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_0_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L3L2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_0 : memref<4096xbf16>, 0, 4096, [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_1 : memref<4096xbf16>, 0, 4096, [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_0 : memref<4096xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_1 : memref<4096xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<16384xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<16384xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<16384xbf16>, 4096, 4096) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<16384xbf16>, 4096, 4096) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 4, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%C_L2L3_1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<16384xbf16>, 8192, 4096) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<16384xbf16>, 8192, 4096) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(S2MM, 5, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%C_L2L3_1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<16384xbf16>, 12288, 4096) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<16384xbf16>, 12288, 4096) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(MM2S, 2, ^bb25, ^bb27)
    ^bb25:  // 2 preds: ^bb24, ^bb26
      aie.use_lock(%C_L2L3_1_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<16384xbf16>, 0, 16384, [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock, Release, 4)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_1_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<16384xbf16>, 0, 16384, [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock, Release, 4)
      aie.next_bd ^bb25
    ^bb27:  // pred: ^bb24
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_0_1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_1_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_0_1_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_0_1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_1_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_1_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_1_1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_1_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_1_1_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_1_1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_1_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_1_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_2_1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_1_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_2_1_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_2_1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_1_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_1_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_3_1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_1_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_3_1_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_3_1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_1_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_1_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L3L2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_2_cons_buff_0 : memref<4096xbf16>, 0, 4096, [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_2_cons_buff_1 : memref<4096xbf16>, 0, 4096, [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_2_cons_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_2_cons_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_0 : memref<4096xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_1 : memref<4096xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<16384xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<16384xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<16384xbf16>, 4096, 4096) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<16384xbf16>, 4096, 4096) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 4, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%C_L2L3_2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<16384xbf16>, 8192, 4096) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<16384xbf16>, 8192, 4096) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(S2MM, 5, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%C_L2L3_2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<16384xbf16>, 12288, 4096) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<16384xbf16>, 12288, 4096) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(MM2S, 2, ^bb25, ^bb27)
    ^bb25:  // 2 preds: ^bb24, ^bb26
      aie.use_lock(%C_L2L3_2_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<16384xbf16>, 0, 16384, [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock, Release, 4)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_2_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<16384xbf16>, 0, 16384, [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock, Release, 4)
      aie.next_bd ^bb25
    ^bb27:  // pred: ^bb24
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_0_2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_2_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_0_2_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_0_2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_2_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_2_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_1_2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_2_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_1_2_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_1_2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_2_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_2_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_2_2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_2_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_2_2_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_2_2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_2_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_2_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_3_2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_2_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_3_2_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_3_2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_2_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_2_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L3L2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_3_cons_buff_0 : memref<4096xbf16>, 0, 4096, [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_3_cons_buff_1 : memref<4096xbf16>, 0, 4096, [<size = 16, stride = 256>, <size = 8, stride = 8>, <size = 4, stride = 64>, <size = 8, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_3_cons_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_3_cons_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_0 : memref<4096xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_1 : memref<4096xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 16, stride = 4>, <size = 8, stride = 64>, <size = 4, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_3_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<16384xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_3_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<16384xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_3_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<16384xbf16>, 4096, 4096) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_3_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<16384xbf16>, 4096, 4096) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 4, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%C_L2L3_3_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<16384xbf16>, 8192, 4096) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_3_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<16384xbf16>, 8192, 4096) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(S2MM, 5, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%C_L2L3_3_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<16384xbf16>, 12288, 4096) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_3_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<16384xbf16>, 12288, 4096) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(MM2S, 2, ^bb25, ^bb27)
    ^bb25:  // 2 preds: ^bb24, ^bb26
      aie.use_lock(%C_L2L3_3_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<16384xbf16>, 0, 16384, [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock, Release, 4)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_3_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<16384xbf16>, 0, 16384, [<size = 16, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock, Release, 4)
      aie.next_bd ^bb25
    ^bb27:  // pred: ^bb24
      aie.end
    }
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_0_3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_3_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_0_3_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_0_3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_3_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_3_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_5 = aie.mem(%tile_1_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_1_3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_3_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_1_3_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_1_3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_3_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_3_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_2_5 = aie.mem(%tile_2_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_2_3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_3_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_2_3_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_2_3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_3_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_3_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L1L2_3_3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_3_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L1L2_3_3_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L1L2_3_3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_3_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_3_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @A_L3L2_0(MM2S, 0, 0)
    aie.shim_dma_allocation @A_L3L2_1(MM2S, 0, 1)
    aie.shim_dma_allocation @A_L3L2_2(MM2S, 0, 2)
    aie.shim_dma_allocation @A_L3L2_3(MM2S, 0, 3)
    aie.shim_dma_allocation @B_L3L2_0(MM2S, 1, 0)
    aie.shim_dma_allocation @B_L3L2_1(MM2S, 1, 1)
    aie.shim_dma_allocation @B_L3L2_2(MM2S, 1, 2)
    aie.shim_dma_allocation @B_L3L2_3(MM2S, 1, 3)
    aie.shim_dma_allocation @C_L2L3_0(S2MM, 0, 0)
    aie.shim_dma_allocation @C_L2L3_1(S2MM, 0, 1)
    aie.shim_dma_allocation @C_L2L3_2(S2MM, 0, 2)
    aie.shim_dma_allocation @C_L2L3_3(S2MM, 0, 3)
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_0_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_1_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_1_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_2_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_2_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_3_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_3_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.wire(%shim_mux_0_0 : North, %switchbox_0_0 : South)
    aie.wire(%shim_noc_tile_0_0 : DMA, %shim_mux_0_0 : DMA)
    aie.wire(%mem_tile_0_1 : Core, %switchbox_0_1 : Core)
    aie.wire(%mem_tile_0_1 : DMA, %switchbox_0_1 : DMA)
    aie.wire(%switchbox_0_0 : North, %switchbox_0_1 : South)
    aie.wire(%tile_0_2 : Core, %switchbox_0_2 : Core)
    aie.wire(%tile_0_2 : DMA, %switchbox_0_2 : DMA)
    aie.wire(%switchbox_0_1 : North, %switchbox_0_2 : South)
    aie.wire(%tile_0_3 : Core, %switchbox_0_3 : Core)
    aie.wire(%tile_0_3 : DMA, %switchbox_0_3 : DMA)
    aie.wire(%switchbox_0_2 : North, %switchbox_0_3 : South)
    aie.wire(%tile_0_4 : Core, %switchbox_0_4 : Core)
    aie.wire(%tile_0_4 : DMA, %switchbox_0_4 : DMA)
    aie.wire(%switchbox_0_3 : North, %switchbox_0_4 : South)
    aie.wire(%tile_0_5 : Core, %switchbox_0_5 : Core)
    aie.wire(%tile_0_5 : DMA, %switchbox_0_5 : DMA)
    aie.wire(%switchbox_0_4 : North, %switchbox_0_5 : South)
    aie.wire(%switchbox_0_0 : East, %switchbox_1_0 : West)
    aie.wire(%shim_mux_1_0 : North, %switchbox_1_0 : South)
    aie.wire(%shim_noc_tile_1_0 : DMA, %shim_mux_1_0 : DMA)
    aie.wire(%switchbox_0_1 : East, %switchbox_1_1 : West)
    aie.wire(%mem_tile_1_1 : Core, %switchbox_1_1 : Core)
    aie.wire(%mem_tile_1_1 : DMA, %switchbox_1_1 : DMA)
    aie.wire(%switchbox_1_0 : North, %switchbox_1_1 : South)
    aie.wire(%switchbox_0_2 : East, %switchbox_1_2 : West)
    aie.wire(%tile_1_2 : Core, %switchbox_1_2 : Core)
    aie.wire(%tile_1_2 : DMA, %switchbox_1_2 : DMA)
    aie.wire(%switchbox_1_1 : North, %switchbox_1_2 : South)
    aie.wire(%switchbox_0_3 : East, %switchbox_1_3 : West)
    aie.wire(%tile_1_3 : Core, %switchbox_1_3 : Core)
    aie.wire(%tile_1_3 : DMA, %switchbox_1_3 : DMA)
    aie.wire(%switchbox_1_2 : North, %switchbox_1_3 : South)
    aie.wire(%switchbox_0_4 : East, %switchbox_1_4 : West)
    aie.wire(%tile_1_4 : Core, %switchbox_1_4 : Core)
    aie.wire(%tile_1_4 : DMA, %switchbox_1_4 : DMA)
    aie.wire(%switchbox_1_3 : North, %switchbox_1_4 : South)
    aie.wire(%switchbox_0_5 : East, %switchbox_1_5 : West)
    aie.wire(%tile_1_5 : Core, %switchbox_1_5 : Core)
    aie.wire(%tile_1_5 : DMA, %switchbox_1_5 : DMA)
    aie.wire(%switchbox_1_4 : North, %switchbox_1_5 : South)
    aie.wire(%switchbox_1_0 : East, %switchbox_2_0 : West)
    aie.wire(%shim_mux_2_0 : North, %switchbox_2_0 : South)
    aie.wire(%shim_noc_tile_2_0 : DMA, %shim_mux_2_0 : DMA)
    aie.wire(%switchbox_1_1 : East, %switchbox_2_1 : West)
    aie.wire(%mem_tile_2_1 : Core, %switchbox_2_1 : Core)
    aie.wire(%mem_tile_2_1 : DMA, %switchbox_2_1 : DMA)
    aie.wire(%switchbox_2_0 : North, %switchbox_2_1 : South)
    aie.wire(%switchbox_1_2 : East, %switchbox_2_2 : West)
    aie.wire(%tile_2_2 : Core, %switchbox_2_2 : Core)
    aie.wire(%tile_2_2 : DMA, %switchbox_2_2 : DMA)
    aie.wire(%switchbox_2_1 : North, %switchbox_2_2 : South)
    aie.wire(%switchbox_1_3 : East, %switchbox_2_3 : West)
    aie.wire(%tile_2_3 : Core, %switchbox_2_3 : Core)
    aie.wire(%tile_2_3 : DMA, %switchbox_2_3 : DMA)
    aie.wire(%switchbox_2_2 : North, %switchbox_2_3 : South)
    aie.wire(%switchbox_1_4 : East, %switchbox_2_4 : West)
    aie.wire(%tile_2_4 : Core, %switchbox_2_4 : Core)
    aie.wire(%tile_2_4 : DMA, %switchbox_2_4 : DMA)
    aie.wire(%switchbox_2_3 : North, %switchbox_2_4 : South)
    aie.wire(%switchbox_1_5 : East, %switchbox_2_5 : West)
    aie.wire(%tile_2_5 : Core, %switchbox_2_5 : Core)
    aie.wire(%tile_2_5 : DMA, %switchbox_2_5 : DMA)
    aie.wire(%switchbox_2_4 : North, %switchbox_2_5 : South)
    aie.wire(%switchbox_2_0 : East, %switchbox_3_0 : West)
    aie.wire(%shim_mux_3_0 : North, %switchbox_3_0 : South)
    aie.wire(%shim_noc_tile_3_0 : DMA, %shim_mux_3_0 : DMA)
    aie.wire(%switchbox_2_1 : East, %switchbox_3_1 : West)
    aie.wire(%mem_tile_3_1 : Core, %switchbox_3_1 : Core)
    aie.wire(%mem_tile_3_1 : DMA, %switchbox_3_1 : DMA)
    aie.wire(%switchbox_3_0 : North, %switchbox_3_1 : South)
    aie.wire(%switchbox_2_2 : East, %switchbox_3_2 : West)
    aie.wire(%tile_3_2 : Core, %switchbox_3_2 : Core)
    aie.wire(%tile_3_2 : DMA, %switchbox_3_2 : DMA)
    aie.wire(%switchbox_3_1 : North, %switchbox_3_2 : South)
    aie.wire(%switchbox_2_3 : East, %switchbox_3_3 : West)
    aie.wire(%tile_3_3 : Core, %switchbox_3_3 : Core)
    aie.wire(%tile_3_3 : DMA, %switchbox_3_3 : DMA)
    aie.wire(%switchbox_3_2 : North, %switchbox_3_3 : South)
    aie.wire(%switchbox_2_4 : East, %switchbox_3_4 : West)
    aie.wire(%tile_3_4 : Core, %switchbox_3_4 : Core)
    aie.wire(%tile_3_4 : DMA, %switchbox_3_4 : DMA)
    aie.wire(%switchbox_3_3 : North, %switchbox_3_4 : South)
    aie.wire(%switchbox_2_5 : East, %switchbox_3_5 : West)
    aie.wire(%tile_3_5 : Core, %switchbox_3_5 : Core)
    aie.wire(%tile_3_5 : DMA, %switchbox_3_5 : DMA)
    aie.wire(%switchbox_3_4 : North, %switchbox_3_5 : South)
  }
}

