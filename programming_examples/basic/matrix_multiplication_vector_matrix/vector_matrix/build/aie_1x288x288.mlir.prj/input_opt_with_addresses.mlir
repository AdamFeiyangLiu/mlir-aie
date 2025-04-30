module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @memB0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i16>
  llvm.mlir.global external @memB0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i16>
  llvm.mlir.global external @inB0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x array<32 x i16>>
  llvm.mlir.global external @inB0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x array<32 x i16>>
  llvm.mlir.global external @outC0_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x i32>
  llvm.mlir.global external @outC0_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x i32>
  llvm.mlir.global external @inA_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x i16>
  llvm.mlir.global external @inA_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x i16>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @inA_cons() {addr_space = 0 : i32} : !llvm.array<32 x i16>
  llvm.mlir.global external @inA() {addr_space = 0 : i32} : !llvm.array<32 x i16>
  llvm.mlir.global external @outC0_cons() {addr_space = 0 : i32} : !llvm.array<32 x i32>
  llvm.mlir.global external @outC0() {addr_space = 0 : i32} : !llvm.array<32 x i32>
  llvm.mlir.global external @inB0_cons() {addr_space = 0 : i32} : !llvm.array<32 x array<32 x i16>>
  llvm.mlir.global external @inB0() {addr_space = 0 : i32} : !llvm.array<32 x array<32 x i16>>
  llvm.mlir.global external @memB0_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i16>
  llvm.mlir.global external @memB0() {addr_space = 0 : i32} : !llvm.array<1024 x i16>
  llvm.func @zero_scalar_i32(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @matvec_scalar_i16_i32(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @outC0_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @inB0_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @inA_cons_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @inB0_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @inA_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(true) : i1
    %6 = llvm.mlir.addressof @outC0_buff_0 : !llvm.ptr
    %7 = llvm.mlir.constant(32 : index) : i64
    %8 = llvm.mlir.constant(51 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(52 : i32) : i32
    %11 = llvm.mlir.constant(49 : i32) : i32
    %12 = llvm.mlir.constant(53 : i32) : i32
    %13 = llvm.mlir.constant(50 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(8 : index) : i64
    %16 = llvm.mlir.constant(-1 : i32) : i32
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(4294967294 : index) : i64
    %19 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%17 : i64)
  ^bb1(%20: i64):  // 2 preds: ^bb0, ^bb8
    %21 = llvm.icmp "slt" %20, %18 : i64
    llvm.cond_br %21, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    %22 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i32>
    llvm.intr.assume %5 ["align"(%22, %7 : !llvm.ptr, i64)] : i1
    llvm.call @zero_scalar_i32(%22) : (!llvm.ptr) -> ()
    llvm.br ^bb3(%17 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %15 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %25 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i16>
    llvm.intr.assume %5 ["align"(%25, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%22, %7 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<32 x i16>>
    llvm.intr.assume %5 ["align"(%26, %7 : !llvm.ptr, i64)] : i1
    llvm.call @matvec_scalar_i16_i32(%26, %25, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i16>
    llvm.intr.assume %5 ["align"(%27, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%22, %7 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<32 x i16>>
    llvm.intr.assume %5 ["align"(%28, %7 : !llvm.ptr, i64)] : i1
    llvm.call @matvec_scalar_i16_i32(%28, %27, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %29 = llvm.add %23, %19 : i64
    llvm.br ^bb3(%29 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %30 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i16>
    llvm.intr.assume %5 ["align"(%30, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%22, %7 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<32 x i16>>
    llvm.intr.assume %5 ["align"(%31, %7 : !llvm.ptr, i64)] : i1
    llvm.call @matvec_scalar_i16_i32(%31, %30, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    %32 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i32>
    llvm.intr.assume %5 ["align"(%32, %7 : !llvm.ptr, i64)] : i1
    llvm.call @zero_scalar_i32(%32) : (!llvm.ptr) -> ()
    llvm.br ^bb6(%17 : i64)
  ^bb6(%33: i64):  // 2 preds: ^bb5, ^bb7
    %34 = llvm.icmp "slt" %33, %15 : i64
    llvm.cond_br %34, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %35 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i16>
    llvm.intr.assume %5 ["align"(%35, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%32, %7 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<32 x i16>>
    llvm.intr.assume %5 ["align"(%36, %7 : !llvm.ptr, i64)] : i1
    llvm.call @matvec_scalar_i16_i32(%36, %35, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%30, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%32, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%31, %7 : !llvm.ptr, i64)] : i1
    llvm.call @matvec_scalar_i16_i32(%31, %30, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %37 = llvm.add %33, %19 : i64
    llvm.br ^bb6(%37 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %38 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i16>
    llvm.intr.assume %5 ["align"(%38, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%32, %7 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<32 x i16>>
    llvm.intr.assume %5 ["align"(%39, %7 : !llvm.ptr, i64)] : i1
    llvm.call @matvec_scalar_i16_i32(%39, %38, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %40 = llvm.add %20, %19 : i64
    llvm.br ^bb1(%40 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    %41 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i32>
    llvm.intr.assume %5 ["align"(%41, %7 : !llvm.ptr, i64)] : i1
    llvm.call @zero_scalar_i32(%41) : (!llvm.ptr) -> ()
    llvm.br ^bb10(%17 : i64)
  ^bb10(%42: i64):  // 2 preds: ^bb9, ^bb11
    %43 = llvm.icmp "slt" %42, %15 : i64
    llvm.cond_br %43, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %44 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i16>
    llvm.intr.assume %5 ["align"(%44, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%41, %7 : !llvm.ptr, i64)] : i1
    %45 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<32 x i16>>
    llvm.intr.assume %5 ["align"(%45, %7 : !llvm.ptr, i64)] : i1
    llvm.call @matvec_scalar_i16_i32(%45, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %46 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i16>
    llvm.intr.assume %5 ["align"(%46, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%41, %7 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<32 x i16>>
    llvm.intr.assume %5 ["align"(%47, %7 : !llvm.ptr, i64)] : i1
    llvm.call @matvec_scalar_i16_i32(%47, %46, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %48 = llvm.add %42, %19 : i64
    llvm.br ^bb10(%48 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %49 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x i16>
    llvm.intr.assume %5 ["align"(%49, %7 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%41, %7 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<32 x i16>>
    llvm.intr.assume %5 ["align"(%50, %7 : !llvm.ptr, i64)] : i1
    llvm.call @matvec_scalar_i16_i32(%50, %49, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
}

