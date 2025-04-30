module {
  aie.device(npu1_1col) {
    memref.global "public" @out0_cons : memref<8x16xi32>
    memref.global "public" @out0 : memref<8x16xi32>
    memref.global "public" @in0_cons : memref<8x16xi32>
    memref.global "public" @in0 : memref<8x16xi32>
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %out0_cons_prod_lock = aie.lock(%shim_noc_tile_0_0, 2) {init = 1 : i32, sym_name = "out0_cons_prod_lock"}
    %out0_cons_cons_lock = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "out0_cons_cons_lock"}
    %out0_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out0_buff_0"} : memref<8x16xi32> 
    %out0_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out0_buff_1"} : memref<8x16xi32> 
    %out0_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "out0_prod_lock"}
    %out0_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "out0_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_cons_buff_0"} : memref<8x16xi32> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_cons_buff_1"} : memref<8x16xi32> 
    %in0_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
    %switchbox_0_0 = aie.switchbox(%shim_noc_tile_0_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<North : 0, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_0_0 = aie.shim_mux(%shim_noc_tile_0_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<North : 2, DMA : 0>
    }
    %mem_tile_0_1 = aie.tile(0, 1)
    %switchbox_0_1 = aie.switchbox(%mem_tile_0_1) {
      aie.connect<South : 1, North : 1>
      aie.connect<North : 0, South : 0>
    }
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, South : 0>
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out0_prod_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %c1_3 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c16 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %in0_cons_buff_0[%2, %4] : memref<8x16xi32>
      %c1_i32 = arith.constant 1 : i32
      %7 = arith.addi %6, %c1_i32 : i32
      memref.store %7, %out0_buff_0[%2, %4] : memref<8x16xi32>
      %8 = arith.addi %4, %c1_3 : index
      cf.br ^bb5(%8 : index)
    ^bb7:  // pred: ^bb5
      %9 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%9 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%out0_cons_lock, Release, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out0_prod_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %c8_5 = arith.constant 8 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb9(%c0_4 : index)
    ^bb9(%10: index):  // 2 preds: ^bb8, ^bb13
      %11 = arith.cmpi slt, %10, %c8_5 : index
      cf.cond_br %11, ^bb10, ^bb14
    ^bb10:  // pred: ^bb9
      %c0_7 = arith.constant 0 : index
      %c16_8 = arith.constant 16 : index
      %c1_9 = arith.constant 1 : index
      cf.br ^bb11(%c0_7 : index)
    ^bb11(%12: index):  // 2 preds: ^bb10, ^bb12
      %13 = arith.cmpi slt, %12, %c16_8 : index
      cf.cond_br %13, ^bb12, ^bb13
    ^bb12:  // pred: ^bb11
      %14 = memref.load %in0_cons_buff_1[%10, %12] : memref<8x16xi32>
      %c1_i32_10 = arith.constant 1 : i32
      %15 = arith.addi %14, %c1_i32_10 : i32
      memref.store %15, %out0_buff_1[%10, %12] : memref<8x16xi32>
      %16 = arith.addi %12, %c1_9 : index
      cf.br ^bb11(%16 : index)
    ^bb13:  // pred: ^bb11
      %17 = arith.addi %10, %c1_6 : index
      cf.br ^bb9(%17 : index)
    ^bb14:  // pred: ^bb9
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%out0_cons_lock, Release, 1)
      %18 = arith.addi %0, %c2 : index
      cf.br ^bb1(%18 : index)
    ^bb15:  // pred: ^bb1
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out0_prod_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %c8_12 = arith.constant 8 : index
      %c1_13 = arith.constant 1 : index
      cf.br ^bb16(%c0_11 : index)
    ^bb16(%19: index):  // 2 preds: ^bb15, ^bb20
      %20 = arith.cmpi slt, %19, %c8_12 : index
      cf.cond_br %20, ^bb17, ^bb21
    ^bb17:  // pred: ^bb16
      %c0_14 = arith.constant 0 : index
      %c16_15 = arith.constant 16 : index
      %c1_16 = arith.constant 1 : index
      cf.br ^bb18(%c0_14 : index)
    ^bb18(%21: index):  // 2 preds: ^bb17, ^bb19
      %22 = arith.cmpi slt, %21, %c16_15 : index
      cf.cond_br %22, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      %23 = memref.load %in0_cons_buff_0[%19, %21] : memref<8x16xi32>
      %c1_i32_17 = arith.constant 1 : i32
      %24 = arith.addi %23, %c1_i32_17 : i32
      memref.store %24, %out0_buff_0[%19, %21] : memref<8x16xi32>
      %25 = arith.addi %21, %c1_16 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      %26 = arith.addi %19, %c1_13 : index
      cf.br ^bb16(%26 : index)
    ^bb21:  // pred: ^bb16
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%out0_cons_lock, Release, 1)
      aie.end
    }
    aiex.runtime_sequence @sequence(%arg0: memref<16x128xi32>, %arg1: memref<16x128xi32>, %arg2: memref<16x128xi32>) {
      %0 = aiex.dma_configure_task_for @in0 {
        aie.dma_bd(%arg0 : memref<16x128xi32>, 0, 128, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 8, stride = 128>, <size = 16, stride = 1>])
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @out0 {
        aie.dma_bd(%arg2 : memref<16x128xi32>, 0, 128, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 8, stride = 128>, <size = 16, stride = 1>])
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%1)
      aiex.dma_await_task(%1)
      aiex.dma_free_task(%0)
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<8x16xi32>, 0, 128) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<8x16xi32>, 0, 128) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out0_buff_0 : memref<8x16xi32>, 0, 128) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out0_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out0_buff_1 : memref<8x16xi32>, 0, 128) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out0_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @out0(S2MM, 0, 0)
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_0_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.wire(%shim_mux_0_0 : North, %switchbox_0_0 : South)
    aie.wire(%shim_noc_tile_0_0 : DMA, %shim_mux_0_0 : DMA)
    aie.wire(%mem_tile_0_1 : Core, %switchbox_0_1 : Core)
    aie.wire(%mem_tile_0_1 : DMA, %switchbox_0_1 : DMA)
    aie.wire(%switchbox_0_0 : North, %switchbox_0_1 : South)
    aie.wire(%tile_0_2 : Core, %switchbox_0_2 : Core)
    aie.wire(%tile_0_2 : DMA, %switchbox_0_2 : DMA)
    aie.wire(%switchbox_0_1 : North, %switchbox_0_2 : South)
  }
}

