module {
  aie.device(npu1_4col) {
    memref.global "public" @inA_cons : memref<32xi16>
    memref.global "public" @inA : memref<32xi16>
    memref.global "public" @outC0_cons : memref<32xi32>
    memref.global "public" @outC0 : memref<32xi32>
    memref.global "public" @inB0_cons : memref<32x32xi16>
    memref.global "public" @inB0 : memref<32x32xi16>
    memref.global "public" @memB0_cons : memref<1024xi16>
    memref.global "public" @memB0 : memref<1024xi16>
    func.func private @zero_scalar_i32(memref<32xi32>)
    func.func private @matvec_scalar_i16_i32(memref<32x32xi16>, memref<32xi16>, memref<32xi32>)
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
    %inA_cons_buff_0 = aie.buffer(%tile_0_2) {address = 5376 : i32, sym_name = "inA_cons_buff_0"} : memref<32xi16> 
    %inA_cons_buff_1 = aie.buffer(%tile_0_2) {address = 5440 : i32, sym_name = "inA_cons_buff_1"} : memref<32xi16> 
    %inA_cons_prod_lock = aie.lock(%tile_0_2, 4) {init = 2 : i32, sym_name = "inA_cons_prod_lock"}
    %inA_cons_cons_lock = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "inA_cons_cons_lock"}
    %inA_prod_lock = aie.lock(%shim_noc_tile_0_0, 4) {init = 1 : i32, sym_name = "inA_prod_lock"}
    %inA_cons_lock = aie.lock(%shim_noc_tile_0_0, 5) {init = 0 : i32, sym_name = "inA_cons_lock"}
    %outC0_cons_prod_lock = aie.lock(%shim_noc_tile_0_0, 2) {init = 1 : i32, sym_name = "outC0_cons_prod_lock"}
    %outC0_cons_cons_lock = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "outC0_cons_cons_lock"}
    %outC0_buff_0 = aie.buffer(%tile_0_2) {address = 5120 : i32, sym_name = "outC0_buff_0"} : memref<32xi32> 
    %outC0_buff_1 = aie.buffer(%tile_0_2) {address = 5248 : i32, sym_name = "outC0_buff_1"} : memref<32xi32> 
    %outC0_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "outC0_prod_lock"}
    %outC0_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "outC0_cons_lock"}
    %inB0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, sym_name = "inB0_cons_buff_0"} : memref<32x32xi16> 
    %inB0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 3072 : i32, sym_name = "inB0_cons_buff_1"} : memref<32x32xi16> 
    %inB0_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "inB0_cons_prod_lock"}
    %inB0_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "inB0_cons_cons_lock"}
    %memB0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, sym_name = "memB0_cons_buff_0"} : memref<1024xi16> 
    %memB0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 2048 : i32, sym_name = "memB0_cons_buff_1"} : memref<1024xi16> 
    %memB0_cons_prod_lock = aie.lock(%mem_tile_0_1, 0) {init = 2 : i32, sym_name = "memB0_cons_prod_lock"}
    %memB0_cons_cons_lock = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "memB0_cons_cons_lock"}
    %memB0_prod_lock = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "memB0_prod_lock"}
    %memB0_cons_lock = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "memB0_cons_lock"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %mem_tile_0_1, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %shim_noc_tile_0_0, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 1, %tile_0_2, DMA : 1)
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      %c4294967294 = arith.constant 4294967294 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c4294967294 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outC0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC0_buff_0) : (memref<32xi32>) -> ()
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inB0_cons_buff_0, %inA_cons_buff_0, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.use_lock(%inB0_cons_prod_lock, Release, 1)
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inB0_cons_buff_1, %inA_cons_buff_1, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.use_lock(%inB0_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inB0_cons_buff_0, %inA_cons_buff_0, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.use_lock(%inB0_cons_prod_lock, Release, 1)
      aie.use_lock(%outC0_cons_lock, Release, 1)
      aie.use_lock(%outC0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC0_buff_1) : (memref<32xi32>) -> ()
      %c0_3 = arith.constant 0 : index
      %c9_4 = arith.constant 9 : index
      %c1_5 = arith.constant 1 : index
      %c8_6 = arith.constant 8 : index
      %c2_7 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8_6 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inB0_cons_buff_1, %inA_cons_buff_1, %outC0_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.use_lock(%inB0_cons_prod_lock, Release, 1)
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inB0_cons_buff_0, %inA_cons_buff_0, %outC0_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.use_lock(%inB0_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_7 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inB0_cons_buff_1, %inA_cons_buff_1, %outC0_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.use_lock(%inB0_cons_prod_lock, Release, 1)
      aie.use_lock(%outC0_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%outC0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC0_buff_0) : (memref<32xi32>) -> ()
      %c0_8 = arith.constant 0 : index
      %c9_9 = arith.constant 9 : index
      %c1_10 = arith.constant 1 : index
      %c8_11 = arith.constant 8 : index
      %c2_12 = arith.constant 2 : index
      cf.br ^bb10(%c0_8 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8_11 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inB0_cons_buff_0, %inA_cons_buff_0, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.use_lock(%inB0_cons_prod_lock, Release, 1)
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inB0_cons_buff_1, %inA_cons_buff_1, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.use_lock(%inB0_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_12 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inB0_cons_buff_0, %inA_cons_buff_0, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.use_lock(%inB0_cons_prod_lock, Release, 1)
      aie.use_lock(%outC0_cons_lock, Release, 1)
      aie.end
    } {link_with = "mv_32x32.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<288xi16>, %arg1: memref<288xi16>, %arg2: memref<288xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][9, 1, 1, 288][0, 0, 0, 1]) {id = 2 : i64, metadata = @inA} : memref<288xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][9, 9, 32, 32][9216, 32, 288, 1]) {id = 1 : i64, metadata = @memB0} : memref<288xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 288][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<288xi32>
      aiex.npu.dma_wait {symbol = @outC0}
    }
    aie.shim_dma_allocation @memB0(MM2S, 0, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memB0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memB0_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memB0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memB0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memB0_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memB0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memB0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memB0_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memB0_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memB0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memB0_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memB0_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inB0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inB0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inB0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inB0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outC0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC0_buff_0 : memref<32xi32>, 0, 32) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outC0_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outC0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC0_buff_1 : memref<32xi32>, 0, 32) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outC0_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%inA_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<32xi16>, 0, 32) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%inA_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inA_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<32xi16>, 0, 32) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%inA_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @outC0(S2MM, 0, 0)
    aie.shim_dma_allocation @inA(MM2S, 1, 0)
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
  }
}
