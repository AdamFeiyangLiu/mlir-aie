module {
  aie.device(npu1_4col) {
    memref.global "public" @inB_0_cons : memref<32xi16>
    memref.global "public" @inB_1_cons : memref<32xi16>
    memref.global "public" @inB_2_cons : memref<32xi16>
    memref.global "public" @inB_3_cons : memref<32xi16>
    memref.global "public" @inB : memref<32xi16>
    memref.global "public" @outC3_cons : memref<32xi32>
    memref.global "public" @outC3 : memref<32xi32>
    memref.global "public" @inA3_cons : memref<32x32xi16>
    memref.global "public" @inA3 : memref<32x32xi16>
    memref.global "public" @memA3_cons : memref<1024xi16>
    memref.global "public" @memA3 : memref<1024xi16>
    memref.global "public" @outC2_cons : memref<32xi32>
    memref.global "public" @outC2 : memref<32xi32>
    memref.global "public" @inA2_cons : memref<32x32xi16>
    memref.global "public" @inA2 : memref<32x32xi16>
    memref.global "public" @memA2_cons : memref<1024xi16>
    memref.global "public" @memA2 : memref<1024xi16>
    memref.global "public" @outC1_cons : memref<32xi32>
    memref.global "public" @outC1 : memref<32xi32>
    memref.global "public" @inA1_cons : memref<32x32xi16>
    memref.global "public" @inA1 : memref<32x32xi16>
    memref.global "public" @memA1_cons : memref<1024xi16>
    memref.global "public" @memA1 : memref<1024xi16>
    memref.global "public" @outC0_cons : memref<32xi32>
    memref.global "public" @outC0 : memref<32xi32>
    memref.global "public" @inA0_cons : memref<32x32xi16>
    memref.global "public" @inA0 : memref<32x32xi16>
    memref.global "public" @memA0_cons : memref<1024xi16>
    memref.global "public" @memA0 : memref<1024xi16>
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
    %inB_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 5376 : i32, sym_name = "inB_0_cons_buff_0"} : memref<32xi16> 
    %inB_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 5440 : i32, sym_name = "inB_0_cons_buff_1"} : memref<32xi16> 
    %inB_0_cons_prod_lock = aie.lock(%tile_0_2, 4) {init = 2 : i32, sym_name = "inB_0_cons_prod_lock"}
    %inB_0_cons_cons_lock = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "inB_0_cons_cons_lock"}
    %inB_1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 5376 : i32, sym_name = "inB_1_cons_buff_0"} : memref<32xi16> 
    %inB_1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 5440 : i32, sym_name = "inB_1_cons_buff_1"} : memref<32xi16> 
    %inB_1_cons_prod_lock = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "inB_1_cons_prod_lock"}
    %inB_1_cons_cons_lock = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "inB_1_cons_cons_lock"}
    %inB_2_cons_buff_0 = aie.buffer(%tile_2_2) {address = 5376 : i32, sym_name = "inB_2_cons_buff_0"} : memref<32xi16> 
    %inB_2_cons_buff_1 = aie.buffer(%tile_2_2) {address = 5440 : i32, sym_name = "inB_2_cons_buff_1"} : memref<32xi16> 
    %inB_2_cons_prod_lock = aie.lock(%tile_2_2, 4) {init = 2 : i32, sym_name = "inB_2_cons_prod_lock"}
    %inB_2_cons_cons_lock = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "inB_2_cons_cons_lock"}
    %inB_3_cons_buff_0 = aie.buffer(%tile_3_2) {address = 5376 : i32, sym_name = "inB_3_cons_buff_0"} : memref<32xi16> 
    %inB_3_cons_buff_1 = aie.buffer(%tile_3_2) {address = 5440 : i32, sym_name = "inB_3_cons_buff_1"} : memref<32xi16> 
    %inB_3_cons_prod_lock = aie.lock(%tile_3_2, 4) {init = 2 : i32, sym_name = "inB_3_cons_prod_lock"}
    %inB_3_cons_cons_lock = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "inB_3_cons_cons_lock"}
    %inB_prod_lock = aie.lock(%shim_noc_tile_1_0, 4) {init = 1 : i32, sym_name = "inB_prod_lock"}
    %inB_cons_lock = aie.lock(%shim_noc_tile_1_0, 5) {init = 0 : i32, sym_name = "inB_cons_lock"}
    %outC3_cons_prod_lock = aie.lock(%shim_noc_tile_3_0, 2) {init = 1 : i32, sym_name = "outC3_cons_prod_lock"}
    %outC3_cons_cons_lock = aie.lock(%shim_noc_tile_3_0, 3) {init = 0 : i32, sym_name = "outC3_cons_cons_lock"}
    %outC3_buff_0 = aie.buffer(%tile_3_2) {address = 5120 : i32, sym_name = "outC3_buff_0"} : memref<32xi32> 
    %outC3_buff_1 = aie.buffer(%tile_3_2) {address = 5248 : i32, sym_name = "outC3_buff_1"} : memref<32xi32> 
    %outC3_prod_lock = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "outC3_prod_lock"}
    %outC3_cons_lock = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "outC3_cons_lock"}
    %inA3_cons_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, sym_name = "inA3_cons_buff_0"} : memref<32x32xi16> 
    %inA3_cons_buff_1 = aie.buffer(%tile_3_2) {address = 3072 : i32, sym_name = "inA3_cons_buff_1"} : memref<32x32xi16> 
    %inA3_cons_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "inA3_cons_prod_lock"}
    %inA3_cons_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "inA3_cons_cons_lock"}
    %memA3_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, sym_name = "memA3_cons_buff_0"} : memref<1024xi16> 
    %memA3_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 2048 : i32, sym_name = "memA3_cons_buff_1"} : memref<1024xi16> 
    %memA3_cons_prod_lock = aie.lock(%mem_tile_3_1, 0) {init = 2 : i32, sym_name = "memA3_cons_prod_lock"}
    %memA3_cons_cons_lock = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "memA3_cons_cons_lock"}
    %memA3_prod_lock = aie.lock(%shim_noc_tile_3_0, 0) {init = 1 : i32, sym_name = "memA3_prod_lock"}
    %memA3_cons_lock = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "memA3_cons_lock"}
    %outC2_cons_prod_lock = aie.lock(%shim_noc_tile_2_0, 2) {init = 1 : i32, sym_name = "outC2_cons_prod_lock"}
    %outC2_cons_cons_lock = aie.lock(%shim_noc_tile_2_0, 3) {init = 0 : i32, sym_name = "outC2_cons_cons_lock"}
    %outC2_buff_0 = aie.buffer(%tile_2_2) {address = 5120 : i32, sym_name = "outC2_buff_0"} : memref<32xi32> 
    %outC2_buff_1 = aie.buffer(%tile_2_2) {address = 5248 : i32, sym_name = "outC2_buff_1"} : memref<32xi32> 
    %outC2_prod_lock = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "outC2_prod_lock"}
    %outC2_cons_lock = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "outC2_cons_lock"}
    %inA2_cons_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, sym_name = "inA2_cons_buff_0"} : memref<32x32xi16> 
    %inA2_cons_buff_1 = aie.buffer(%tile_2_2) {address = 3072 : i32, sym_name = "inA2_cons_buff_1"} : memref<32x32xi16> 
    %inA2_cons_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "inA2_cons_prod_lock"}
    %inA2_cons_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "inA2_cons_cons_lock"}
    %memA2_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, sym_name = "memA2_cons_buff_0"} : memref<1024xi16> 
    %memA2_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 2048 : i32, sym_name = "memA2_cons_buff_1"} : memref<1024xi16> 
    %memA2_cons_prod_lock = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "memA2_cons_prod_lock"}
    %memA2_cons_cons_lock = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "memA2_cons_cons_lock"}
    %memA2_prod_lock = aie.lock(%shim_noc_tile_2_0, 0) {init = 1 : i32, sym_name = "memA2_prod_lock"}
    %memA2_cons_lock = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "memA2_cons_lock"}
    %outC1_cons_prod_lock = aie.lock(%shim_noc_tile_1_0, 2) {init = 1 : i32, sym_name = "outC1_cons_prod_lock"}
    %outC1_cons_cons_lock = aie.lock(%shim_noc_tile_1_0, 3) {init = 0 : i32, sym_name = "outC1_cons_cons_lock"}
    %outC1_buff_0 = aie.buffer(%tile_1_2) {address = 5120 : i32, sym_name = "outC1_buff_0"} : memref<32xi32> 
    %outC1_buff_1 = aie.buffer(%tile_1_2) {address = 5248 : i32, sym_name = "outC1_buff_1"} : memref<32xi32> 
    %outC1_prod_lock = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "outC1_prod_lock"}
    %outC1_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "outC1_cons_lock"}
    %inA1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, sym_name = "inA1_cons_buff_0"} : memref<32x32xi16> 
    %inA1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 3072 : i32, sym_name = "inA1_cons_buff_1"} : memref<32x32xi16> 
    %inA1_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "inA1_cons_prod_lock"}
    %inA1_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "inA1_cons_cons_lock"}
    %memA1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, sym_name = "memA1_cons_buff_0"} : memref<1024xi16> 
    %memA1_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 2048 : i32, sym_name = "memA1_cons_buff_1"} : memref<1024xi16> 
    %memA1_cons_prod_lock = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "memA1_cons_prod_lock"}
    %memA1_cons_cons_lock = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "memA1_cons_cons_lock"}
    %memA1_prod_lock = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "memA1_prod_lock"}
    %memA1_cons_lock = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "memA1_cons_lock"}
    %outC0_cons_prod_lock = aie.lock(%shim_noc_tile_0_0, 2) {init = 1 : i32, sym_name = "outC0_cons_prod_lock"}
    %outC0_cons_cons_lock = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "outC0_cons_cons_lock"}
    %outC0_buff_0 = aie.buffer(%tile_0_2) {address = 5120 : i32, sym_name = "outC0_buff_0"} : memref<32xi32> 
    %outC0_buff_1 = aie.buffer(%tile_0_2) {address = 5248 : i32, sym_name = "outC0_buff_1"} : memref<32xi32> 
    %outC0_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "outC0_prod_lock"}
    %outC0_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "outC0_cons_lock"}
    %inA0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, sym_name = "inA0_cons_buff_0"} : memref<32x32xi16> 
    %inA0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 3072 : i32, sym_name = "inA0_cons_buff_1"} : memref<32x32xi16> 
    %inA0_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "inA0_cons_prod_lock"}
    %inA0_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "inA0_cons_cons_lock"}
    %memA0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, sym_name = "memA0_cons_buff_0"} : memref<1024xi16> 
    %memA0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 2048 : i32, sym_name = "memA0_cons_buff_1"} : memref<1024xi16> 
    %memA0_cons_prod_lock = aie.lock(%mem_tile_0_1, 0) {init = 2 : i32, sym_name = "memA0_cons_prod_lock"}
    %memA0_cons_cons_lock = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "memA0_cons_cons_lock"}
    %memA0_prod_lock = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "memA0_prod_lock"}
    %memA0_cons_lock = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "memA0_cons_lock"}
    %switchbox_0_0 = aie.switchbox(%shim_noc_tile_0_0) {
      aie.connect<South : 3, North : 3>
      aie.connect<North : 0, South : 2>
      aie.connect<East : 2, North : 2>
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
    %switchbox_0_1 = aie.switchbox(%mem_tile_0_1) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<North : 0, South : 0>
      aie.connect<South : 2, North : 2>
    }
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, South : 0>
      aie.connect<South : 2, DMA : 1>
    }
    %switchbox_1_0 = aie.switchbox(%shim_noc_tile_1_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<North : 2, South : 2>
      aie.connect<South : 7, East : 3>
      aie.connect<South : 7, North : 5>
      aie.connect<South : 7, West : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_1_0 = aie.shim_mux(%shim_noc_tile_1_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<North : 2, DMA : 0>
      aie.connect<DMA : 1, North : 7>
    }
    %switchbox_1_1 = aie.switchbox(%mem_tile_1_1) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<North : 2, South : 2>
      aie.connect<South : 5, North : 5>
    }
    %switchbox_1_2 = aie.switchbox(%tile_1_2) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, South : 2>
      aie.connect<South : 5, DMA : 1>
    }
    %switchbox_2_0 = aie.switchbox(%shim_noc_tile_2_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<North : 3, South : 2>
      aie.connect<West : 3, East : 1>
      aie.connect<West : 3, North : 5>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_2_0 = aie.shim_mux(%shim_noc_tile_2_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_2_1 = aie.switchbox(%mem_tile_2_1) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<North : 3, South : 3>
      aie.connect<South : 5, North : 5>
    }
    %switchbox_2_2 = aie.switchbox(%tile_2_2) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, South : 3>
      aie.connect<South : 5, DMA : 1>
    }
    %switchbox_3_0 = aie.switchbox(%shim_noc_tile_3_0) {
      aie.connect<South : 3, North : 0>
      aie.connect<North : 2, South : 2>
      aie.connect<West : 1, North : 4>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_3_0 = aie.shim_mux(%shim_noc_tile_3_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_3_1 = aie.switchbox(%mem_tile_3_1) {
      aie.connect<South : 0, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<North : 2, South : 2>
      aie.connect<South : 4, North : 4>
    }
    %switchbox_3_2 = aie.switchbox(%tile_3_2) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, South : 2>
      aie.connect<South : 4, DMA : 1>
    }
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
      %c128 = arith.constant 128 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c128 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%inA0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA0_cons_buff_0, %inB_0_cons_buff_0, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA0_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_0_cons_prod_lock, Release, 1)
      aie.use_lock(%inA0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA0_cons_buff_1, %inB_0_cons_buff_1, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA0_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_0_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%outC0_cons_lock, Release, 1)
      aie.use_lock(%outC0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC0_buff_1) : (memref<32xi32>) -> ()
      %c0_3 = arith.constant 0 : index
      %c128_4 = arith.constant 128 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c128_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%inA0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA0_cons_buff_0, %inB_0_cons_buff_0, %outC0_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA0_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_0_cons_prod_lock, Release, 1)
      aie.use_lock(%inA0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA0_cons_buff_1, %inB_0_cons_buff_1, %outC0_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA0_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_0_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%outC0_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%outC0_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC0_buff_0) : (memref<32xi32>) -> ()
      %c0_7 = arith.constant 0 : index
      %c128_8 = arith.constant 128 : index
      %c1_9 = arith.constant 1 : index
      %c2_10 = arith.constant 2 : index
      cf.br ^bb10(%c0_7 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c128_8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inA0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA0_cons_buff_0, %inB_0_cons_buff_0, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA0_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_0_cons_prod_lock, Release, 1)
      aie.use_lock(%inA0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA0_cons_buff_1, %inB_0_cons_buff_1, %outC0_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA0_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_0_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_10 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%outC0_cons_lock, Release, 1)
      aie.end
    } {link_with = "mv_32x32.o"}
    %core_1_2 = aie.core(%tile_1_2) {
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
      aie.use_lock(%outC1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC1_buff_0) : (memref<32xi32>) -> ()
      %c0_0 = arith.constant 0 : index
      %c128 = arith.constant 128 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c128 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%inA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA1_cons_buff_0, %inB_1_cons_buff_0, %outC1_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA1_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_1_cons_prod_lock, Release, 1)
      aie.use_lock(%inA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA1_cons_buff_1, %inB_1_cons_buff_1, %outC1_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA1_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%outC1_cons_lock, Release, 1)
      aie.use_lock(%outC1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC1_buff_1) : (memref<32xi32>) -> ()
      %c0_3 = arith.constant 0 : index
      %c128_4 = arith.constant 128 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c128_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%inA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA1_cons_buff_0, %inB_1_cons_buff_0, %outC1_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA1_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_1_cons_prod_lock, Release, 1)
      aie.use_lock(%inA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA1_cons_buff_1, %inB_1_cons_buff_1, %outC1_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA1_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_1_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%outC1_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%outC1_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC1_buff_0) : (memref<32xi32>) -> ()
      %c0_7 = arith.constant 0 : index
      %c128_8 = arith.constant 128 : index
      %c1_9 = arith.constant 1 : index
      %c2_10 = arith.constant 2 : index
      cf.br ^bb10(%c0_7 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c128_8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA1_cons_buff_0, %inB_1_cons_buff_0, %outC1_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA1_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_1_cons_prod_lock, Release, 1)
      aie.use_lock(%inA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA1_cons_buff_1, %inB_1_cons_buff_1, %outC1_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA1_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_1_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_10 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%outC1_cons_lock, Release, 1)
      aie.end
    } {link_with = "mv_32x32.o"}
    %core_2_2 = aie.core(%tile_2_2) {
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
      aie.use_lock(%outC2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC2_buff_0) : (memref<32xi32>) -> ()
      %c0_0 = arith.constant 0 : index
      %c128 = arith.constant 128 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c128 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%inA2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA2_cons_buff_0, %inB_2_cons_buff_0, %outC2_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA2_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_2_cons_prod_lock, Release, 1)
      aie.use_lock(%inA2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA2_cons_buff_1, %inB_2_cons_buff_1, %outC2_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA2_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_2_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%outC2_cons_lock, Release, 1)
      aie.use_lock(%outC2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC2_buff_1) : (memref<32xi32>) -> ()
      %c0_3 = arith.constant 0 : index
      %c128_4 = arith.constant 128 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c128_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%inA2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA2_cons_buff_0, %inB_2_cons_buff_0, %outC2_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA2_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_2_cons_prod_lock, Release, 1)
      aie.use_lock(%inA2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA2_cons_buff_1, %inB_2_cons_buff_1, %outC2_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA2_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_2_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%outC2_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%outC2_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC2_buff_0) : (memref<32xi32>) -> ()
      %c0_7 = arith.constant 0 : index
      %c128_8 = arith.constant 128 : index
      %c1_9 = arith.constant 1 : index
      %c2_10 = arith.constant 2 : index
      cf.br ^bb10(%c0_7 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c128_8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inA2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA2_cons_buff_0, %inB_2_cons_buff_0, %outC2_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA2_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_2_cons_prod_lock, Release, 1)
      aie.use_lock(%inA2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA2_cons_buff_1, %inB_2_cons_buff_1, %outC2_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA2_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_2_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_10 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%outC2_cons_lock, Release, 1)
      aie.end
    } {link_with = "mv_32x32.o"}
    %core_3_2 = aie.core(%tile_3_2) {
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
      aie.use_lock(%outC3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC3_buff_0) : (memref<32xi32>) -> ()
      %c0_0 = arith.constant 0 : index
      %c128 = arith.constant 128 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c128 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%inA3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA3_cons_buff_0, %inB_3_cons_buff_0, %outC3_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA3_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_3_cons_prod_lock, Release, 1)
      aie.use_lock(%inA3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA3_cons_buff_1, %inB_3_cons_buff_1, %outC3_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA3_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_3_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%outC3_cons_lock, Release, 1)
      aie.use_lock(%outC3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC3_buff_1) : (memref<32xi32>) -> ()
      %c0_3 = arith.constant 0 : index
      %c128_4 = arith.constant 128 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c128_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%inA3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA3_cons_buff_0, %inB_3_cons_buff_0, %outC3_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA3_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_3_cons_prod_lock, Release, 1)
      aie.use_lock(%inA3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA3_cons_buff_1, %inB_3_cons_buff_1, %outC3_buff_1) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA3_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_3_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%outC3_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%outC3_prod_lock, AcquireGreaterEqual, 1)
      func.call @zero_scalar_i32(%outC3_buff_0) : (memref<32xi32>) -> ()
      %c0_7 = arith.constant 0 : index
      %c128_8 = arith.constant 128 : index
      %c1_9 = arith.constant 1 : index
      %c2_10 = arith.constant 2 : index
      cf.br ^bb10(%c0_7 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c128_8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inA3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA3_cons_buff_0, %inB_3_cons_buff_0, %outC3_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA3_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_3_cons_prod_lock, Release, 1)
      aie.use_lock(%inA3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%inB_3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @matvec_scalar_i16_i32(%inA3_cons_buff_1, %inB_3_cons_buff_1, %outC3_buff_0) : (memref<32x32xi16>, memref<32xi16>, memref<32xi32>) -> ()
      aie.use_lock(%inA3_cons_prod_lock, Release, 1)
      aie.use_lock(%inB_3_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_10 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%outC3_cons_lock, Release, 1)
      aie.end
    } {link_with = "mv_32x32.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<67108864xi16>, %arg1: memref<4096xi16>, %arg2: memref<16384xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][16, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 16777216][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4096][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 33554432][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8192][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 50331648][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12288][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<16384xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][16, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 2097152][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 512][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 18874368][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 4608][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 35651584][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 8704][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 52428800][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 12800][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<16384xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][16, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 4194304][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1024][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 20971520][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5120][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 37748736][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9216][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 54525952][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13312][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<16384xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][16, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 6291456][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 1536][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 23068672][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 5632][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 39845888][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 9728][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 56623104][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 13824][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<16384xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][16, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 8388608][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2048][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 25165824][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6144][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 41943040][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10240][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 58720256][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14336][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<16384xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][16, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 10485760][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 2560][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 27262976][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 6656][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 44040192][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 10752][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 60817408][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 14848][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<16384xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][16, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 12582912][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3072][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 29360128][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7168][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 46137344][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11264][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 62914560][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 15360][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<16384xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][16, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @inB} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 14680064][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA0} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 3584][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC0} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 31457280][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA1} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 7680][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC1} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 48234496][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA2} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 11776][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC2} : memref<16384xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 65011712][16, 128, 32, 32][131072, 32, 4096, 1]) {id = 1 : i64, metadata = @memA3} : memref<67108864xi16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 15872][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC3} : memref<16384xi32>
      aiex.npu.dma_wait {symbol = @outC0}
      aiex.npu.dma_wait {symbol = @outC1}
      aiex.npu.dma_wait {symbol = @outC2}
      aiex.npu.dma_wait {symbol = @outC3}
    }
    aie.shim_dma_allocation @memA0(MM2S, 0, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inA0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inA0_cons_cons_lock, Release, 1)
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
      aie.use_lock(%inB_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_0_cons_buff_0 : memref<32xi16>, 0, 32) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%inB_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inB_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_0_cons_buff_1 : memref<32xi16>, 0, 32) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%inB_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @outC0(S2MM, 0, 0)
    aie.shim_dma_allocation @memA1(MM2S, 0, 1)
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA1_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA1_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outC1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC1_buff_0 : memref<32xi32>, 0, 32) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outC1_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outC1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC1_buff_1 : memref<32xi32>, 0, 32) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outC1_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%inB_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_1_cons_buff_0 : memref<32xi16>, 0, 32) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%inB_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inB_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_1_cons_buff_1 : memref<32xi16>, 0, 32) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%inB_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @outC1(S2MM, 0, 1)
    aie.shim_dma_allocation @memA2(MM2S, 0, 2)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA2_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA2_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outC2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC2_buff_0 : memref<32xi32>, 0, 32) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outC2_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outC2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC2_buff_1 : memref<32xi32>, 0, 32) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outC2_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%inB_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_2_cons_buff_0 : memref<32xi16>, 0, 32) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%inB_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inB_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_2_cons_buff_1 : memref<32xi16>, 0, 32) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%inB_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @outC2(S2MM, 0, 2)
    aie.shim_dma_allocation @memA3(MM2S, 0, 3)
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_0 : memref<1024xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_1 : memref<1024xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA3_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA3_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outC3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC3_buff_0 : memref<32xi32>, 0, 32) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outC3_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outC3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC3_buff_1 : memref<32xi32>, 0, 32) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outC3_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%inB_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_3_cons_buff_0 : memref<32xi16>, 0, 32) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%inB_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inB_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_3_cons_buff_1 : memref<32xi16>, 0, 32) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%inB_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @outC3(S2MM, 0, 3)
    aie.shim_dma_allocation @inB(MM2S, 1, 1)
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
  }
}

