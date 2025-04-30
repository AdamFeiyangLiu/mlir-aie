; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@A_L2L1_0_3_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_0_3_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_0_2_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_0_2_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_0_1_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_0_1_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_0_0_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_0_0_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_1_3_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_1_3_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_1_2_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_1_2_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_1_1_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_1_1_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_1_0_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_1_0_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_2_3_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_2_3_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_2_2_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_2_2_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_2_1_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_2_1_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_2_0_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_2_0_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_3_3_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_3_3_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_3_2_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_3_2_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_3_1_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_3_1_cons_buff_0 = external global [64 x [64 x i16]]
@A_L2L1_3_0_cons_buff_1 = external global [64 x [64 x i16]]
@A_L2L1_3_0_cons_buff_0 = external global [64 x [64 x i16]]
@A_L3L2_0_cons_buff_1 = external global [4096 x i16]
@A_L3L2_0_cons_buff_0 = external global [4096 x i16]
@A_L3L2_1_cons_buff_1 = external global [4096 x i16]
@A_L3L2_1_cons_buff_0 = external global [4096 x i16]
@A_L3L2_2_cons_buff_1 = external global [4096 x i16]
@A_L3L2_2_cons_buff_0 = external global [4096 x i16]
@A_L3L2_3_cons_buff_1 = external global [4096 x i16]
@A_L3L2_3_cons_buff_0 = external global [4096 x i16]
@B_L3L2_0_cons_buff_1 = external global [4096 x i16]
@B_L3L2_0_cons_buff_0 = external global [4096 x i16]
@B_L2L1_0_3_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_0_3_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_0_2_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_0_2_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_0_1_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_0_1_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_0_0_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_0_0_cons_buff_0 = external global [64 x [64 x i16]]
@B_L3L2_1_cons_buff_1 = external global [4096 x i16]
@B_L3L2_1_cons_buff_0 = external global [4096 x i16]
@B_L2L1_1_3_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_1_3_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_1_2_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_1_2_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_1_1_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_1_1_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_1_0_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_1_0_cons_buff_0 = external global [64 x [64 x i16]]
@B_L3L2_2_cons_buff_1 = external global [4096 x i16]
@B_L3L2_2_cons_buff_0 = external global [4096 x i16]
@B_L2L1_2_3_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_2_3_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_2_2_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_2_2_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_2_1_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_2_1_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_2_0_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_2_0_cons_buff_0 = external global [64 x [64 x i16]]
@B_L3L2_3_cons_buff_1 = external global [4096 x i16]
@B_L3L2_3_cons_buff_0 = external global [4096 x i16]
@B_L2L1_3_3_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_3_3_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_3_2_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_3_2_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_3_1_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_3_1_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_3_0_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_3_0_cons_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_0_0_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_0_0_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_0_1_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_0_1_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_0_2_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_0_2_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_0_3_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_0_3_buff_0 = external global [64 x [64 x i16]]
@C_L2L3_0_buff_1 = external global [16384 x i16]
@C_L2L3_0_buff_0 = external global [16384 x i16]
@C_L1L2_1_0_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_1_0_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_1_1_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_1_1_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_1_2_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_1_2_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_1_3_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_1_3_buff_0 = external global [64 x [64 x i16]]
@C_L2L3_1_buff_1 = external global [16384 x i16]
@C_L2L3_1_buff_0 = external global [16384 x i16]
@C_L1L2_2_0_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_2_0_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_2_1_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_2_1_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_2_2_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_2_2_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_2_3_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_2_3_buff_0 = external global [64 x [64 x i16]]
@C_L2L3_2_buff_1 = external global [16384 x i16]
@C_L2L3_2_buff_0 = external global [16384 x i16]
@C_L1L2_3_0_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_3_0_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_3_1_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_3_1_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_3_2_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_3_2_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_3_3_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_3_3_buff_0 = external global [64 x [64 x i16]]
@C_L2L3_3_buff_1 = external global [16384 x i16]
@C_L2L3_3_buff_0 = external global [16384 x i16]
@C_L2L3_3_cons = external global [16384 x i16]
@C_L2L3_3 = external global [16384 x i16]
@C_L1L2_3_3_cons = external global [64 x [64 x i16]]
@C_L1L2_3_3 = external global [64 x [64 x i16]]
@C_L1L2_3_2_cons = external global [64 x [64 x i16]]
@C_L1L2_3_2 = external global [64 x [64 x i16]]
@C_L1L2_3_1_cons = external global [64 x [64 x i16]]
@C_L1L2_3_1 = external global [64 x [64 x i16]]
@C_L1L2_3_0_cons = external global [64 x [64 x i16]]
@C_L1L2_3_0 = external global [64 x [64 x i16]]
@C_L2L3_2_cons = external global [16384 x i16]
@C_L2L3_2 = external global [16384 x i16]
@C_L1L2_2_3_cons = external global [64 x [64 x i16]]
@C_L1L2_2_3 = external global [64 x [64 x i16]]
@C_L1L2_2_2_cons = external global [64 x [64 x i16]]
@C_L1L2_2_2 = external global [64 x [64 x i16]]
@C_L1L2_2_1_cons = external global [64 x [64 x i16]]
@C_L1L2_2_1 = external global [64 x [64 x i16]]
@C_L1L2_2_0_cons = external global [64 x [64 x i16]]
@C_L1L2_2_0 = external global [64 x [64 x i16]]
@C_L2L3_1_cons = external global [16384 x i16]
@C_L2L3_1 = external global [16384 x i16]
@C_L1L2_1_3_cons = external global [64 x [64 x i16]]
@C_L1L2_1_3 = external global [64 x [64 x i16]]
@C_L1L2_1_2_cons = external global [64 x [64 x i16]]
@C_L1L2_1_2 = external global [64 x [64 x i16]]
@C_L1L2_1_1_cons = external global [64 x [64 x i16]]
@C_L1L2_1_1 = external global [64 x [64 x i16]]
@C_L1L2_1_0_cons = external global [64 x [64 x i16]]
@C_L1L2_1_0 = external global [64 x [64 x i16]]
@C_L2L3_0_cons = external global [16384 x i16]
@C_L2L3_0 = external global [16384 x i16]
@C_L1L2_0_3_cons = external global [64 x [64 x i16]]
@C_L1L2_0_3 = external global [64 x [64 x i16]]
@C_L1L2_0_2_cons = external global [64 x [64 x i16]]
@C_L1L2_0_2 = external global [64 x [64 x i16]]
@C_L1L2_0_1_cons = external global [64 x [64 x i16]]
@C_L1L2_0_1 = external global [64 x [64 x i16]]
@C_L1L2_0_0_cons = external global [64 x [64 x i16]]
@C_L1L2_0_0 = external global [64 x [64 x i16]]
@B_L2L1_3_0_cons = external global [64 x [64 x i16]]
@B_L2L1_3_1_cons = external global [64 x [64 x i16]]
@B_L2L1_3_2_cons = external global [64 x [64 x i16]]
@B_L2L1_3_3_cons = external global [64 x [64 x i16]]
@B_L2L1_3 = external global [64 x [64 x i16]]
@B_L3L2_3_cons = external global [4096 x i16]
@B_L3L2_3 = external global [4096 x i16]
@B_L2L1_2_0_cons = external global [64 x [64 x i16]]
@B_L2L1_2_1_cons = external global [64 x [64 x i16]]
@B_L2L1_2_2_cons = external global [64 x [64 x i16]]
@B_L2L1_2_3_cons = external global [64 x [64 x i16]]
@B_L2L1_2 = external global [64 x [64 x i16]]
@B_L3L2_2_cons = external global [4096 x i16]
@B_L3L2_2 = external global [4096 x i16]
@B_L2L1_1_0_cons = external global [64 x [64 x i16]]
@B_L2L1_1_1_cons = external global [64 x [64 x i16]]
@B_L2L1_1_2_cons = external global [64 x [64 x i16]]
@B_L2L1_1_3_cons = external global [64 x [64 x i16]]
@B_L2L1_1 = external global [64 x [64 x i16]]
@B_L3L2_1_cons = external global [4096 x i16]
@B_L3L2_1 = external global [4096 x i16]
@B_L2L1_0_0_cons = external global [64 x [64 x i16]]
@B_L2L1_0_1_cons = external global [64 x [64 x i16]]
@B_L2L1_0_2_cons = external global [64 x [64 x i16]]
@B_L2L1_0_3_cons = external global [64 x [64 x i16]]
@B_L2L1_0 = external global [64 x [64 x i16]]
@B_L3L2_0_cons = external global [4096 x i16]
@B_L3L2_0 = external global [4096 x i16]
@A_L3L2_3_cons = external global [4096 x i16]
@A_L3L2_3 = external global [4096 x i16]
@A_L3L2_2_cons = external global [4096 x i16]
@A_L3L2_2 = external global [4096 x i16]
@A_L3L2_1_cons = external global [4096 x i16]
@A_L3L2_1 = external global [4096 x i16]
@A_L3L2_0_cons = external global [4096 x i16]
@A_L3L2_0 = external global [4096 x i16]
@A_L2L1_3_0_cons = external global [64 x [64 x i16]]
@A_L2L1_3_1_cons = external global [64 x [64 x i16]]
@A_L2L1_3_2_cons = external global [64 x [64 x i16]]
@A_L2L1_3_3_cons = external global [64 x [64 x i16]]
@A_L2L1_3 = external global [64 x [64 x i16]]
@A_L2L1_2_0_cons = external global [64 x [64 x i16]]
@A_L2L1_2_1_cons = external global [64 x [64 x i16]]
@A_L2L1_2_2_cons = external global [64 x [64 x i16]]
@A_L2L1_2_3_cons = external global [64 x [64 x i16]]
@A_L2L1_2 = external global [64 x [64 x i16]]
@A_L2L1_1_0_cons = external global [64 x [64 x i16]]
@A_L2L1_1_1_cons = external global [64 x [64 x i16]]
@A_L2L1_1_2_cons = external global [64 x [64 x i16]]
@A_L2L1_1_3_cons = external global [64 x [64 x i16]]
@A_L2L1_1 = external global [64 x [64 x i16]]
@A_L2L1_0_0_cons = external global [64 x [64 x i16]]
@A_L2L1_0_1_cons = external global [64 x [64 x i16]]
@A_L2L1_0_2_cons = external global [64 x [64 x i16]]
@A_L2L1_0_3_cons = external global [64 x [64 x i16]]
@A_L2L1_0 = external global [64 x [64 x i16]]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @zero_i16(ptr)

declare void @matmul_i16_i16(ptr, ptr, ptr)

define void @core_3_5() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_3_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_0, ptr @B_L2L1_3_3_cons_buff_0, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_1, ptr @B_L2L1_3_3_cons_buff_1, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_3_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_0, ptr @B_L2L1_3_3_cons_buff_0, ptr @C_L1L2_3_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_1, ptr @B_L2L1_3_3_cons_buff_1, ptr @C_L1L2_3_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_3_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_0, ptr @B_L2L1_3_3_cons_buff_0, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_1, ptr @B_L2L1_3_3_cons_buff_1, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_3_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_0, ptr @B_L2L1_3_3_cons_buff_0, ptr @C_L1L2_3_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_1, ptr @B_L2L1_3_3_cons_buff_1, ptr @C_L1L2_3_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_3_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_0, ptr @B_L2L1_3_3_cons_buff_0, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_1, ptr @B_L2L1_3_3_cons_buff_1, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_3_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_0, ptr @B_L2L1_3_3_cons_buff_0, ptr @C_L1L2_3_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_1, ptr @B_L2L1_3_3_cons_buff_1, ptr @C_L1L2_3_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_3_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_0, ptr @B_L2L1_3_3_cons_buff_0, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_1, ptr @B_L2L1_3_3_cons_buff_1, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_3_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_0, ptr @B_L2L1_3_3_cons_buff_0, ptr @C_L1L2_3_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_1, ptr @B_L2L1_3_3_cons_buff_1, ptr @C_L1L2_3_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_3_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_0, ptr @B_L2L1_3_3_cons_buff_0, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_3_cons_buff_1, ptr @B_L2L1_3_3_cons_buff_1, ptr @C_L1L2_3_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_2_5() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_3_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_0, ptr @B_L2L1_2_3_cons_buff_0, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_1, ptr @B_L2L1_2_3_cons_buff_1, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_3_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_0, ptr @B_L2L1_2_3_cons_buff_0, ptr @C_L1L2_2_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_1, ptr @B_L2L1_2_3_cons_buff_1, ptr @C_L1L2_2_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_3_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_0, ptr @B_L2L1_2_3_cons_buff_0, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_1, ptr @B_L2L1_2_3_cons_buff_1, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_3_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_0, ptr @B_L2L1_2_3_cons_buff_0, ptr @C_L1L2_2_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_1, ptr @B_L2L1_2_3_cons_buff_1, ptr @C_L1L2_2_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_3_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_0, ptr @B_L2L1_2_3_cons_buff_0, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_1, ptr @B_L2L1_2_3_cons_buff_1, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_3_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_0, ptr @B_L2L1_2_3_cons_buff_0, ptr @C_L1L2_2_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_1, ptr @B_L2L1_2_3_cons_buff_1, ptr @C_L1L2_2_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_3_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_0, ptr @B_L2L1_2_3_cons_buff_0, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_1, ptr @B_L2L1_2_3_cons_buff_1, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_3_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_0, ptr @B_L2L1_2_3_cons_buff_0, ptr @C_L1L2_2_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_1, ptr @B_L2L1_2_3_cons_buff_1, ptr @C_L1L2_2_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_3_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_0, ptr @B_L2L1_2_3_cons_buff_0, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_2_cons_buff_1, ptr @B_L2L1_2_3_cons_buff_1, ptr @C_L1L2_2_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_5() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_3_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_0, ptr @B_L2L1_1_3_cons_buff_0, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_1, ptr @B_L2L1_1_3_cons_buff_1, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_3_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_0, ptr @B_L2L1_1_3_cons_buff_0, ptr @C_L1L2_1_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_1, ptr @B_L2L1_1_3_cons_buff_1, ptr @C_L1L2_1_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_3_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_0, ptr @B_L2L1_1_3_cons_buff_0, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_1, ptr @B_L2L1_1_3_cons_buff_1, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_3_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_0, ptr @B_L2L1_1_3_cons_buff_0, ptr @C_L1L2_1_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_1, ptr @B_L2L1_1_3_cons_buff_1, ptr @C_L1L2_1_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_3_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_0, ptr @B_L2L1_1_3_cons_buff_0, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_1, ptr @B_L2L1_1_3_cons_buff_1, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_3_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_0, ptr @B_L2L1_1_3_cons_buff_0, ptr @C_L1L2_1_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_1, ptr @B_L2L1_1_3_cons_buff_1, ptr @C_L1L2_1_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_3_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_0, ptr @B_L2L1_1_3_cons_buff_0, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_1, ptr @B_L2L1_1_3_cons_buff_1, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_3_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_0, ptr @B_L2L1_1_3_cons_buff_0, ptr @C_L1L2_1_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_1, ptr @B_L2L1_1_3_cons_buff_1, ptr @C_L1L2_1_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_3_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_0, ptr @B_L2L1_1_3_cons_buff_0, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_1_cons_buff_1, ptr @B_L2L1_1_3_cons_buff_1, ptr @C_L1L2_1_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_5() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_3_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_0, ptr @B_L2L1_0_3_cons_buff_0, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_1, ptr @B_L2L1_0_3_cons_buff_1, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_3_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_0, ptr @B_L2L1_0_3_cons_buff_0, ptr @C_L1L2_0_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_1, ptr @B_L2L1_0_3_cons_buff_1, ptr @C_L1L2_0_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_3_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_0, ptr @B_L2L1_0_3_cons_buff_0, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_1, ptr @B_L2L1_0_3_cons_buff_1, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_3_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_0, ptr @B_L2L1_0_3_cons_buff_0, ptr @C_L1L2_0_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_1, ptr @B_L2L1_0_3_cons_buff_1, ptr @C_L1L2_0_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_3_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_0, ptr @B_L2L1_0_3_cons_buff_0, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_1, ptr @B_L2L1_0_3_cons_buff_1, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_3_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_0, ptr @B_L2L1_0_3_cons_buff_0, ptr @C_L1L2_0_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_1, ptr @B_L2L1_0_3_cons_buff_1, ptr @C_L1L2_0_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_3_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_0, ptr @B_L2L1_0_3_cons_buff_0, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_1, ptr @B_L2L1_0_3_cons_buff_1, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_3_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_0, ptr @B_L2L1_0_3_cons_buff_0, ptr @C_L1L2_0_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_1, ptr @B_L2L1_0_3_cons_buff_1, ptr @C_L1L2_0_3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_3_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_0, ptr @B_L2L1_0_3_cons_buff_0, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_3_0_cons_buff_1, ptr @B_L2L1_0_3_cons_buff_1, ptr @C_L1L2_0_3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_3_4() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_2_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_0, ptr @B_L2L1_3_2_cons_buff_0, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_1, ptr @B_L2L1_3_2_cons_buff_1, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_2_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_0, ptr @B_L2L1_3_2_cons_buff_0, ptr @C_L1L2_3_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_1, ptr @B_L2L1_3_2_cons_buff_1, ptr @C_L1L2_3_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_2_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_0, ptr @B_L2L1_3_2_cons_buff_0, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_1, ptr @B_L2L1_3_2_cons_buff_1, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_2_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_0, ptr @B_L2L1_3_2_cons_buff_0, ptr @C_L1L2_3_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_1, ptr @B_L2L1_3_2_cons_buff_1, ptr @C_L1L2_3_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_2_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_0, ptr @B_L2L1_3_2_cons_buff_0, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_1, ptr @B_L2L1_3_2_cons_buff_1, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_2_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_0, ptr @B_L2L1_3_2_cons_buff_0, ptr @C_L1L2_3_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_1, ptr @B_L2L1_3_2_cons_buff_1, ptr @C_L1L2_3_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_2_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_0, ptr @B_L2L1_3_2_cons_buff_0, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_1, ptr @B_L2L1_3_2_cons_buff_1, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_2_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_0, ptr @B_L2L1_3_2_cons_buff_0, ptr @C_L1L2_3_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_1, ptr @B_L2L1_3_2_cons_buff_1, ptr @C_L1L2_3_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_2_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_0, ptr @B_L2L1_3_2_cons_buff_0, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_3_cons_buff_1, ptr @B_L2L1_3_2_cons_buff_1, ptr @C_L1L2_3_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_2_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_0, ptr @B_L2L1_2_2_cons_buff_0, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_1, ptr @B_L2L1_2_2_cons_buff_1, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_2_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_0, ptr @B_L2L1_2_2_cons_buff_0, ptr @C_L1L2_2_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_1, ptr @B_L2L1_2_2_cons_buff_1, ptr @C_L1L2_2_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_2_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_0, ptr @B_L2L1_2_2_cons_buff_0, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_1, ptr @B_L2L1_2_2_cons_buff_1, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_2_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_0, ptr @B_L2L1_2_2_cons_buff_0, ptr @C_L1L2_2_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_1, ptr @B_L2L1_2_2_cons_buff_1, ptr @C_L1L2_2_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_2_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_0, ptr @B_L2L1_2_2_cons_buff_0, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_1, ptr @B_L2L1_2_2_cons_buff_1, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_2_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_0, ptr @B_L2L1_2_2_cons_buff_0, ptr @C_L1L2_2_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_1, ptr @B_L2L1_2_2_cons_buff_1, ptr @C_L1L2_2_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_2_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_0, ptr @B_L2L1_2_2_cons_buff_0, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_1, ptr @B_L2L1_2_2_cons_buff_1, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_2_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_0, ptr @B_L2L1_2_2_cons_buff_0, ptr @C_L1L2_2_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_1, ptr @B_L2L1_2_2_cons_buff_1, ptr @C_L1L2_2_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_2_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_0, ptr @B_L2L1_2_2_cons_buff_0, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_2_cons_buff_1, ptr @B_L2L1_2_2_cons_buff_1, ptr @C_L1L2_2_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_4() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_2_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_0, ptr @B_L2L1_1_2_cons_buff_0, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_1, ptr @B_L2L1_1_2_cons_buff_1, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_2_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_0, ptr @B_L2L1_1_2_cons_buff_0, ptr @C_L1L2_1_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_1, ptr @B_L2L1_1_2_cons_buff_1, ptr @C_L1L2_1_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_2_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_0, ptr @B_L2L1_1_2_cons_buff_0, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_1, ptr @B_L2L1_1_2_cons_buff_1, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_2_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_0, ptr @B_L2L1_1_2_cons_buff_0, ptr @C_L1L2_1_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_1, ptr @B_L2L1_1_2_cons_buff_1, ptr @C_L1L2_1_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_2_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_0, ptr @B_L2L1_1_2_cons_buff_0, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_1, ptr @B_L2L1_1_2_cons_buff_1, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_2_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_0, ptr @B_L2L1_1_2_cons_buff_0, ptr @C_L1L2_1_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_1, ptr @B_L2L1_1_2_cons_buff_1, ptr @C_L1L2_1_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_2_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_0, ptr @B_L2L1_1_2_cons_buff_0, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_1, ptr @B_L2L1_1_2_cons_buff_1, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_2_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_0, ptr @B_L2L1_1_2_cons_buff_0, ptr @C_L1L2_1_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_1, ptr @B_L2L1_1_2_cons_buff_1, ptr @C_L1L2_1_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_2_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_0, ptr @B_L2L1_1_2_cons_buff_0, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_1_cons_buff_1, ptr @B_L2L1_1_2_cons_buff_1, ptr @C_L1L2_1_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_2_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_0, ptr @B_L2L1_0_2_cons_buff_0, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_1, ptr @B_L2L1_0_2_cons_buff_1, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_2_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_0, ptr @B_L2L1_0_2_cons_buff_0, ptr @C_L1L2_0_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_1, ptr @B_L2L1_0_2_cons_buff_1, ptr @C_L1L2_0_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_2_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_0, ptr @B_L2L1_0_2_cons_buff_0, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_1, ptr @B_L2L1_0_2_cons_buff_1, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_2_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_0, ptr @B_L2L1_0_2_cons_buff_0, ptr @C_L1L2_0_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_1, ptr @B_L2L1_0_2_cons_buff_1, ptr @C_L1L2_0_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_2_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_0, ptr @B_L2L1_0_2_cons_buff_0, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_1, ptr @B_L2L1_0_2_cons_buff_1, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_2_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_0, ptr @B_L2L1_0_2_cons_buff_0, ptr @C_L1L2_0_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_1, ptr @B_L2L1_0_2_cons_buff_1, ptr @C_L1L2_0_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_2_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_0, ptr @B_L2L1_0_2_cons_buff_0, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_1, ptr @B_L2L1_0_2_cons_buff_1, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_2_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_0, ptr @B_L2L1_0_2_cons_buff_0, ptr @C_L1L2_0_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_1, ptr @B_L2L1_0_2_cons_buff_1, ptr @C_L1L2_0_2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_2_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_0, ptr @B_L2L1_0_2_cons_buff_0, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_2_0_cons_buff_1, ptr @B_L2L1_0_2_cons_buff_1, ptr @C_L1L2_0_2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_3_3() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_1_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_0, ptr @B_L2L1_3_1_cons_buff_0, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_1, ptr @B_L2L1_3_1_cons_buff_1, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_1_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_0, ptr @B_L2L1_3_1_cons_buff_0, ptr @C_L1L2_3_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_1, ptr @B_L2L1_3_1_cons_buff_1, ptr @C_L1L2_3_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_1_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_0, ptr @B_L2L1_3_1_cons_buff_0, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_1, ptr @B_L2L1_3_1_cons_buff_1, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_1_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_0, ptr @B_L2L1_3_1_cons_buff_0, ptr @C_L1L2_3_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_1, ptr @B_L2L1_3_1_cons_buff_1, ptr @C_L1L2_3_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_1_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_0, ptr @B_L2L1_3_1_cons_buff_0, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_1, ptr @B_L2L1_3_1_cons_buff_1, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_1_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_0, ptr @B_L2L1_3_1_cons_buff_0, ptr @C_L1L2_3_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_1, ptr @B_L2L1_3_1_cons_buff_1, ptr @C_L1L2_3_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_1_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_0, ptr @B_L2L1_3_1_cons_buff_0, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_1, ptr @B_L2L1_3_1_cons_buff_1, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_1_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_0, ptr @B_L2L1_3_1_cons_buff_0, ptr @C_L1L2_3_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_1, ptr @B_L2L1_3_1_cons_buff_1, ptr @C_L1L2_3_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_1_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_0, ptr @B_L2L1_3_1_cons_buff_0, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_3_cons_buff_1, ptr @B_L2L1_3_1_cons_buff_1, ptr @C_L1L2_3_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_1_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_0, ptr @B_L2L1_2_1_cons_buff_0, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_1, ptr @B_L2L1_2_1_cons_buff_1, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_1_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_0, ptr @B_L2L1_2_1_cons_buff_0, ptr @C_L1L2_2_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_1, ptr @B_L2L1_2_1_cons_buff_1, ptr @C_L1L2_2_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_1_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_0, ptr @B_L2L1_2_1_cons_buff_0, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_1, ptr @B_L2L1_2_1_cons_buff_1, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_1_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_0, ptr @B_L2L1_2_1_cons_buff_0, ptr @C_L1L2_2_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_1, ptr @B_L2L1_2_1_cons_buff_1, ptr @C_L1L2_2_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_1_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_0, ptr @B_L2L1_2_1_cons_buff_0, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_1, ptr @B_L2L1_2_1_cons_buff_1, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_1_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_0, ptr @B_L2L1_2_1_cons_buff_0, ptr @C_L1L2_2_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_1, ptr @B_L2L1_2_1_cons_buff_1, ptr @C_L1L2_2_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_1_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_0, ptr @B_L2L1_2_1_cons_buff_0, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_1, ptr @B_L2L1_2_1_cons_buff_1, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_1_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_0, ptr @B_L2L1_2_1_cons_buff_0, ptr @C_L1L2_2_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_1, ptr @B_L2L1_2_1_cons_buff_1, ptr @C_L1L2_2_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_1_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_0, ptr @B_L2L1_2_1_cons_buff_0, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_2_cons_buff_1, ptr @B_L2L1_2_1_cons_buff_1, ptr @C_L1L2_2_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_1_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_0, ptr @B_L2L1_1_1_cons_buff_0, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_1, ptr @B_L2L1_1_1_cons_buff_1, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_1_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_0, ptr @B_L2L1_1_1_cons_buff_0, ptr @C_L1L2_1_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_1, ptr @B_L2L1_1_1_cons_buff_1, ptr @C_L1L2_1_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_1_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_0, ptr @B_L2L1_1_1_cons_buff_0, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_1, ptr @B_L2L1_1_1_cons_buff_1, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_1_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_0, ptr @B_L2L1_1_1_cons_buff_0, ptr @C_L1L2_1_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_1, ptr @B_L2L1_1_1_cons_buff_1, ptr @C_L1L2_1_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_1_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_0, ptr @B_L2L1_1_1_cons_buff_0, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_1, ptr @B_L2L1_1_1_cons_buff_1, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_1_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_0, ptr @B_L2L1_1_1_cons_buff_0, ptr @C_L1L2_1_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_1, ptr @B_L2L1_1_1_cons_buff_1, ptr @C_L1L2_1_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_1_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_0, ptr @B_L2L1_1_1_cons_buff_0, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_1, ptr @B_L2L1_1_1_cons_buff_1, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_1_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_0, ptr @B_L2L1_1_1_cons_buff_0, ptr @C_L1L2_1_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_1, ptr @B_L2L1_1_1_cons_buff_1, ptr @C_L1L2_1_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_1_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_0, ptr @B_L2L1_1_1_cons_buff_0, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_1_cons_buff_1, ptr @B_L2L1_1_1_cons_buff_1, ptr @C_L1L2_1_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_1_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_0, ptr @B_L2L1_0_1_cons_buff_0, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_1, ptr @B_L2L1_0_1_cons_buff_1, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_1_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_0, ptr @B_L2L1_0_1_cons_buff_0, ptr @C_L1L2_0_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_1, ptr @B_L2L1_0_1_cons_buff_1, ptr @C_L1L2_0_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_1_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_0, ptr @B_L2L1_0_1_cons_buff_0, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_1, ptr @B_L2L1_0_1_cons_buff_1, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_1_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_0, ptr @B_L2L1_0_1_cons_buff_0, ptr @C_L1L2_0_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_1, ptr @B_L2L1_0_1_cons_buff_1, ptr @C_L1L2_0_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_1_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_0, ptr @B_L2L1_0_1_cons_buff_0, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_1, ptr @B_L2L1_0_1_cons_buff_1, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_1_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_0, ptr @B_L2L1_0_1_cons_buff_0, ptr @C_L1L2_0_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_1, ptr @B_L2L1_0_1_cons_buff_1, ptr @C_L1L2_0_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_1_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_0, ptr @B_L2L1_0_1_cons_buff_0, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_1, ptr @B_L2L1_0_1_cons_buff_1, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_1_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_0, ptr @B_L2L1_0_1_cons_buff_0, ptr @C_L1L2_0_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_1, ptr @B_L2L1_0_1_cons_buff_1, ptr @C_L1L2_0_1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_1_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_0, ptr @B_L2L1_0_1_cons_buff_0, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_1_0_cons_buff_1, ptr @B_L2L1_0_1_cons_buff_1, ptr @C_L1L2_0_1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_3_2() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_0_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_0, ptr @B_L2L1_3_0_cons_buff_0, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_1, ptr @B_L2L1_3_0_cons_buff_1, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_0_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_0, ptr @B_L2L1_3_0_cons_buff_0, ptr @C_L1L2_3_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_1, ptr @B_L2L1_3_0_cons_buff_1, ptr @C_L1L2_3_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_0_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_0, ptr @B_L2L1_3_0_cons_buff_0, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_1, ptr @B_L2L1_3_0_cons_buff_1, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_0_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_0, ptr @B_L2L1_3_0_cons_buff_0, ptr @C_L1L2_3_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_1, ptr @B_L2L1_3_0_cons_buff_1, ptr @C_L1L2_3_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_0_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_0, ptr @B_L2L1_3_0_cons_buff_0, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_1, ptr @B_L2L1_3_0_cons_buff_1, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_0_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_0, ptr @B_L2L1_3_0_cons_buff_0, ptr @C_L1L2_3_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_1, ptr @B_L2L1_3_0_cons_buff_1, ptr @C_L1L2_3_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_0_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_0, ptr @B_L2L1_3_0_cons_buff_0, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_1, ptr @B_L2L1_3_0_cons_buff_1, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_0_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_0, ptr @B_L2L1_3_0_cons_buff_0, ptr @C_L1L2_3_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_1, ptr @B_L2L1_3_0_cons_buff_1, ptr @C_L1L2_3_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_3_0_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_0, ptr @B_L2L1_3_0_cons_buff_0, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_3_cons_buff_1, ptr @B_L2L1_3_0_cons_buff_1, ptr @C_L1L2_3_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_2_2() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_0_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_0, ptr @B_L2L1_2_0_cons_buff_0, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_1, ptr @B_L2L1_2_0_cons_buff_1, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_0_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_0, ptr @B_L2L1_2_0_cons_buff_0, ptr @C_L1L2_2_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_1, ptr @B_L2L1_2_0_cons_buff_1, ptr @C_L1L2_2_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_0_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_0, ptr @B_L2L1_2_0_cons_buff_0, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_1, ptr @B_L2L1_2_0_cons_buff_1, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_0_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_0, ptr @B_L2L1_2_0_cons_buff_0, ptr @C_L1L2_2_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_1, ptr @B_L2L1_2_0_cons_buff_1, ptr @C_L1L2_2_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_0_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_0, ptr @B_L2L1_2_0_cons_buff_0, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_1, ptr @B_L2L1_2_0_cons_buff_1, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_0_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_0, ptr @B_L2L1_2_0_cons_buff_0, ptr @C_L1L2_2_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_1, ptr @B_L2L1_2_0_cons_buff_1, ptr @C_L1L2_2_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_0_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_0, ptr @B_L2L1_2_0_cons_buff_0, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_1, ptr @B_L2L1_2_0_cons_buff_1, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_0_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_0, ptr @B_L2L1_2_0_cons_buff_0, ptr @C_L1L2_2_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_1, ptr @B_L2L1_2_0_cons_buff_1, ptr @C_L1L2_2_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_2_0_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_0, ptr @B_L2L1_2_0_cons_buff_0, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_2_cons_buff_1, ptr @B_L2L1_2_0_cons_buff_1, ptr @C_L1L2_2_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_2() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_0_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_0, ptr @B_L2L1_1_0_cons_buff_0, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_1, ptr @B_L2L1_1_0_cons_buff_1, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_0_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_0, ptr @B_L2L1_1_0_cons_buff_0, ptr @C_L1L2_1_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_1, ptr @B_L2L1_1_0_cons_buff_1, ptr @C_L1L2_1_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_0_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_0, ptr @B_L2L1_1_0_cons_buff_0, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_1, ptr @B_L2L1_1_0_cons_buff_1, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_0_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_0, ptr @B_L2L1_1_0_cons_buff_0, ptr @C_L1L2_1_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_1, ptr @B_L2L1_1_0_cons_buff_1, ptr @C_L1L2_1_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_0_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_0, ptr @B_L2L1_1_0_cons_buff_0, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_1, ptr @B_L2L1_1_0_cons_buff_1, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_0_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_0, ptr @B_L2L1_1_0_cons_buff_0, ptr @C_L1L2_1_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_1, ptr @B_L2L1_1_0_cons_buff_1, ptr @C_L1L2_1_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_0_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_0, ptr @B_L2L1_1_0_cons_buff_0, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_1, ptr @B_L2L1_1_0_cons_buff_1, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_0_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_0, ptr @B_L2L1_1_0_cons_buff_0, ptr @C_L1L2_1_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_1, ptr @B_L2L1_1_0_cons_buff_1, ptr @C_L1L2_1_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_1_0_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_0, ptr @B_L2L1_1_0_cons_buff_0, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_1_cons_buff_1, ptr @B_L2L1_1_0_cons_buff_1, ptr @C_L1L2_1_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_2() {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i64 [ %52, %51 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %53

4:                                                ; preds = %19, %1
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 80
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_0_buff_0)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add i64 %9, 2
  br label %8

13:                                               ; preds = %8
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_0_buff_1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %18, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %18 = add i64 %15, 2
  br label %14

19:                                               ; preds = %14
  call void @llvm.aie2.release(i32 53, i32 1)
  %20 = add i64 %5, 2
  br label %4

21:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_0_buff_0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %26 = add i64 %23, 2
  br label %22

27:                                               ; preds = %22
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %28

28:                                               ; preds = %43, %27
  %29 = phi i64 [ %44, %43 ], [ 0, %27 ]
  %30 = icmp slt i64 %29, 80
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_0_buff_1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add i64 %33, 2
  br label %32

37:                                               ; preds = %32
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_0_buff_0)
  br label %38

38:                                               ; preds = %41, %37
  %39 = phi i64 [ %42, %41 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %42 = add i64 %39, 2
  br label %38

43:                                               ; preds = %38
  call void @llvm.aie2.release(i32 53, i32 1)
  %44 = add i64 %29, 2
  br label %28

45:                                               ; preds = %28
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_0_buff_1)
  br label %46

46:                                               ; preds = %49, %45
  %47 = phi i64 [ %50, %49 ], [ 0, %45 ]
  %48 = icmp slt i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %50 = add i64 %47, 2
  br label %46

51:                                               ; preds = %46
  call void @llvm.aie2.release(i32 53, i32 1)
  %52 = add i64 %2, 2
  br label %1

53:                                               ; preds = %68, %1
  %54 = phi i64 [ %69, %68 ], [ 0, %1 ]
  %55 = icmp slt i64 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_0_buff_0)
  br label %57

57:                                               ; preds = %60, %56
  %58 = phi i64 [ %61, %60 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %61 = add i64 %58, 2
  br label %57

62:                                               ; preds = %57
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_0_buff_1)
  br label %63

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %67, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %67 = add i64 %64, 2
  br label %63

68:                                               ; preds = %63
  call void @llvm.aie2.release(i32 53, i32 1)
  %69 = add i64 %54, 2
  br label %53

70:                                               ; preds = %53
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @zero_i16(ptr @C_L1L2_0_0_buff_0)
  br label %71

71:                                               ; preds = %74, %70
  %72 = phi i64 [ %75, %74 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, 32
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_0, ptr @B_L2L1_0_0_cons_buff_0, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @matmul_i16_i16(ptr @A_L2L1_0_0_cons_buff_1, ptr @B_L2L1_0_0_cons_buff_1, ptr @C_L1L2_0_0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %75 = add i64 %72, 2
  br label %71

76:                                               ; preds = %71
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
