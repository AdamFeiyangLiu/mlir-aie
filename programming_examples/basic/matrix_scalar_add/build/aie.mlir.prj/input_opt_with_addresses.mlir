module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<8 x array<16 x i32>>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<8 x array<16 x i32>>
  llvm.mlir.global external @out0_buff_1() {addr_space = 0 : i32} : !llvm.array<8 x array<16 x i32>>
  llvm.mlir.global external @out0_buff_0() {addr_space = 0 : i32} : !llvm.array<8 x array<16 x i32>>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out0_cons() {addr_space = 0 : i32} : !llvm.array<8 x array<16 x i32>>
  llvm.mlir.global external @out0() {addr_space = 0 : i32} : !llvm.array<8 x array<16 x i32>>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<8 x array<16 x i32>>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<8 x array<16 x i32>>
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @out0_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @out0_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @in0_cons_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(51 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(49 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(16 : index) : i64
    %12 = llvm.mlir.constant(8 : index) : i64
    %13 = llvm.mlir.constant(-1 : i32) : i32
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb12
    %19 = llvm.icmp "slt" %18, %16 : i64
    llvm.cond_br %19, ^bb2, ^bb13
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %13) : (i32, i32) -> ()
    llvm.br ^bb3(%14 : i64)
  ^bb3(%20: i64):  // 2 preds: ^bb2, ^bb6
    %21 = llvm.icmp "slt" %20, %12 : i64
    llvm.cond_br %21, ^bb4(%14 : i64), ^bb7
  ^bb4(%22: i64):  // 2 preds: ^bb3, ^bb5
    %23 = llvm.icmp "slt" %22, %11 : i64
    llvm.cond_br %23, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %24 = llvm.getelementptr %5[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x array<16 x i32>>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    %25 = llvm.mul %20, %11 : i64
    %26 = llvm.add %25, %22 : i64
    %27 = llvm.getelementptr %24[%26] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %28 = llvm.load %27 : !llvm.ptr -> i32
    %29 = llvm.add %28, %10 : i32
    %30 = llvm.getelementptr %2[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x array<16 x i32>>
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %30[%26] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %29, %31 : i32, !llvm.ptr
    %32 = llvm.add %22, %15 : i64
    llvm.br ^bb4(%32 : i64)
  ^bb6:  // pred: ^bb4
    %33 = llvm.add %20, %15 : i64
    llvm.br ^bb3(%33 : i64)
  ^bb7:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %13) : (i32, i32) -> ()
    llvm.br ^bb8(%14 : i64)
  ^bb8(%34: i64):  // 2 preds: ^bb7, ^bb11
    %35 = llvm.icmp "slt" %34, %12 : i64
    llvm.cond_br %35, ^bb9(%14 : i64), ^bb12
  ^bb9(%36: i64):  // 2 preds: ^bb8, ^bb10
    %37 = llvm.icmp "slt" %36, %11 : i64
    llvm.cond_br %37, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %38 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x array<16 x i32>>
    llvm.intr.assume %4 ["align"(%38, %3 : !llvm.ptr, i64)] : i1
    %39 = llvm.mul %34, %11 : i64
    %40 = llvm.add %39, %36 : i64
    %41 = llvm.getelementptr %38[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %42 = llvm.load %41 : !llvm.ptr -> i32
    %43 = llvm.add %42, %10 : i32
    %44 = llvm.getelementptr %0[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x array<16 x i32>>
    llvm.intr.assume %4 ["align"(%44, %3 : !llvm.ptr, i64)] : i1
    %45 = llvm.getelementptr %44[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %43, %45 : i32, !llvm.ptr
    %46 = llvm.add %36, %15 : i64
    llvm.br ^bb9(%46 : i64)
  ^bb11:  // pred: ^bb9
    %47 = llvm.add %34, %15 : i64
    llvm.br ^bb8(%47 : i64)
  ^bb12:  // pred: ^bb8
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %48 = llvm.add %18, %17 : i64
    llvm.br ^bb1(%48 : i64)
  ^bb13:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %13) : (i32, i32) -> ()
    llvm.br ^bb14(%14 : i64)
  ^bb14(%49: i64):  // 2 preds: ^bb13, ^bb17
    %50 = llvm.icmp "slt" %49, %12 : i64
    llvm.cond_br %50, ^bb15(%14 : i64), ^bb18
  ^bb15(%51: i64):  // 2 preds: ^bb14, ^bb16
    %52 = llvm.icmp "slt" %51, %11 : i64
    llvm.cond_br %52, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %53 = llvm.getelementptr %5[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x array<16 x i32>>
    llvm.intr.assume %4 ["align"(%53, %3 : !llvm.ptr, i64)] : i1
    %54 = llvm.mul %49, %11 : i64
    %55 = llvm.add %54, %51 : i64
    %56 = llvm.getelementptr %53[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %57 = llvm.load %56 : !llvm.ptr -> i32
    %58 = llvm.add %57, %10 : i32
    %59 = llvm.getelementptr %2[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x array<16 x i32>>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    %60 = llvm.getelementptr %59[%55] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %58, %60 : i32, !llvm.ptr
    %61 = llvm.add %51, %15 : i64
    llvm.br ^bb15(%61 : i64)
  ^bb17:  // pred: ^bb15
    %62 = llvm.add %49, %15 : i64
    llvm.br ^bb14(%62 : i64)
  ^bb18:  // pred: ^bb14
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
}

