; ModuleID = '/home/adam/mlir-aie/programming_examples/basic/matrix_multiplication/whole_array/build/aie_2304x2048x2304_64x64x64_4c.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
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
@B_L2L1_0_3_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_0_3_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_0_2_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_0_2_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_0_1_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_0_1_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_0_0_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_0_0_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_1_3_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_1_3_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_1_2_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_1_2_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_1_1_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_1_1_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_1_0_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_1_0_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_2_3_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_2_3_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_2_2_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_2_2_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_2_1_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_2_1_cons_buff_0 = external global [64 x [64 x i16]]
@B_L2L1_2_0_cons_buff_1 = external global [64 x [64 x i16]]
@B_L2L1_2_0_cons_buff_0 = external global [64 x [64 x i16]]
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
@C_L1L2_1_0_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_1_0_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_1_1_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_1_1_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_1_2_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_1_2_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_1_3_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_1_3_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_2_0_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_2_0_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_2_1_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_2_1_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_2_2_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_2_2_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_2_3_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_2_3_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_3_0_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_3_0_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_3_1_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_3_1_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_3_2_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_3_2_buff_0 = external global [64 x [64 x i16]]
@C_L1L2_3_3_buff_1 = external global [64 x [64 x i16]]
@C_L1L2_3_3_buff_0 = external global [64 x [64 x i16]]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @zero_i16(ptr) local_unnamed_addr

declare void @matmul_i16_i16(ptr, ptr, ptr) local_unnamed_addr

define void @core_3_5() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_3_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_3_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_3_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_3_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_3_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_3_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_3_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_3_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_3_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_0, ptr nonnull @B_L2L1_3_3_cons_buff_0, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_3_cons_buff_1, ptr nonnull @B_L2L1_3_3_cons_buff_1, ptr nonnull @C_L1L2_3_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_2_5() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_3_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_3_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_3_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_3_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_3_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_3_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_3_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_3_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_3_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_0, ptr nonnull @B_L2L1_2_3_cons_buff_0, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_2_cons_buff_1, ptr nonnull @B_L2L1_2_3_cons_buff_1, ptr nonnull @C_L1L2_2_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_5() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_3_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_3_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_3_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_3_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_3_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_3_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_3_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_3_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_3_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_0, ptr nonnull @B_L2L1_1_3_cons_buff_0, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_1_cons_buff_1, ptr nonnull @B_L2L1_1_3_cons_buff_1, ptr nonnull @C_L1L2_1_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_5() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_3_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_3_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_3_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_3_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_3_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_3_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_3_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_3_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_3_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_0, ptr nonnull @B_L2L1_0_3_cons_buff_0, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_3_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_3_0_cons_buff_1, ptr nonnull @B_L2L1_0_3_cons_buff_1, ptr nonnull @C_L1L2_0_3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_3_4() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_2_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_2_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_2_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_2_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_2_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_2_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_2_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_2_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_2_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_0, ptr nonnull @B_L2L1_3_2_cons_buff_0, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_3_cons_buff_1, ptr nonnull @B_L2L1_3_2_cons_buff_1, ptr nonnull @C_L1L2_3_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_2_4() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_2_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_2_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_2_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_2_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_2_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_2_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_2_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_2_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_2_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_0, ptr nonnull @B_L2L1_2_2_cons_buff_0, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_2_cons_buff_1, ptr nonnull @B_L2L1_2_2_cons_buff_1, ptr nonnull @C_L1L2_2_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_4() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_2_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_2_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_2_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_2_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_2_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_2_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_2_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_2_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_2_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_0, ptr nonnull @B_L2L1_1_2_cons_buff_0, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_1_cons_buff_1, ptr nonnull @B_L2L1_1_2_cons_buff_1, ptr nonnull @C_L1L2_1_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_4() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_2_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_2_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_2_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_2_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_2_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_2_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_2_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_2_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_2_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_0, ptr nonnull @B_L2L1_0_2_cons_buff_0, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_2_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_2_0_cons_buff_1, ptr nonnull @B_L2L1_0_2_cons_buff_1, ptr nonnull @C_L1L2_0_2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_3_3() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_1_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_1_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_1_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_1_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_1_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_1_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_1_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_1_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_1_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_0, ptr nonnull @B_L2L1_3_1_cons_buff_0, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_3_cons_buff_1, ptr nonnull @B_L2L1_3_1_cons_buff_1, ptr nonnull @C_L1L2_3_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_2_3() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_1_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_1_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_1_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_1_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_1_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_1_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_1_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_1_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_1_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_0, ptr nonnull @B_L2L1_2_1_cons_buff_0, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_2_cons_buff_1, ptr nonnull @B_L2L1_2_1_cons_buff_1, ptr nonnull @C_L1L2_2_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_3() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_1_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_1_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_1_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_1_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_1_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_1_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_1_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_1_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_1_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_0, ptr nonnull @B_L2L1_1_1_cons_buff_0, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_1_cons_buff_1, ptr nonnull @B_L2L1_1_1_cons_buff_1, ptr nonnull @C_L1L2_1_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_3() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_1_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_1_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_1_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_1_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_1_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_1_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_1_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_1_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_1_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_0, ptr nonnull @B_L2L1_0_1_cons_buff_0, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_1_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_1_0_cons_buff_1, ptr nonnull @B_L2L1_0_1_cons_buff_1, ptr nonnull @C_L1L2_0_1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_3_2() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_0_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_0_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_0_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_0_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_0_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_0_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_0_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_0_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_3_0_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_0, ptr nonnull @B_L2L1_3_0_cons_buff_0, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_3_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_3_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_3_cons_buff_1, ptr nonnull @B_L2L1_3_0_cons_buff_1, ptr nonnull @C_L1L2_3_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_2_2() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_0_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_0_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_0_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_0_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_0_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_0_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_0_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_0_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_2_0_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_0, ptr nonnull @B_L2L1_2_0_cons_buff_0, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_2_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_2_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_2_cons_buff_1, ptr nonnull @B_L2L1_2_0_cons_buff_1, ptr nonnull @C_L1L2_2_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_2() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_0_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_0_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_0_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_0_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_0_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_0_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_0_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_0_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_1_0_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_0, ptr nonnull @B_L2L1_1_0_cons_buff_0, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_1_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_1_cons_buff_1, ptr nonnull @B_L2L1_1_0_cons_buff_1, ptr nonnull @C_L1L2_1_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_2() local_unnamed_addr {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %47
  %1 = phi i64 [ 0, %0 ], [ %48, %47 ]
  br label %2

2:                                                ; preds = %.preheader12, %15
  %3 = phi i64 [ 0, %.preheader12 ], [ %16, %15 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_0_buff_0)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 30
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_0_buff_1)
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i64 [ 0, %9 ], [ %13, %10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = or disjoint i64 %11, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %13 = add nuw nsw i64 %11, 8
  %14 = icmp ult i64 %12, 30
  br i1 %14, label %10, label %15

15:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add nuw nsw i64 %3, 2
  %17 = icmp ult i64 %3, 78
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_0_buff_0)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 30
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 53, i32 1)
  br label %25

25:                                               ; preds = %24, %38
  %26 = phi i64 [ 0, %24 ], [ %39, %38 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_0_buff_1)
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %29 = or disjoint i64 %28, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = add nuw nsw i64 %28, 8
  %31 = icmp ult i64 %29, 30
  br i1 %31, label %27, label %32

32:                                               ; preds = %27
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_0_buff_0)
  br label %33

33:                                               ; preds = %33, %32
  %34 = phi i64 [ 0, %32 ], [ %36, %33 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = or disjoint i64 %34, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %36 = add nuw nsw i64 %34, 8
  %37 = icmp ult i64 %35, 30
  br i1 %37, label %33, label %38

38:                                               ; preds = %33
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %39 = add nuw nsw i64 %26, 2
  %40 = icmp ult i64 %26, 78
  br i1 %40, label %25, label %41

41:                                               ; preds = %38
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_0_buff_1)
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 0, %41 ], [ %45, %42 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %44 = or disjoint i64 %43, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %45 = add nuw nsw i64 %43, 8
  %46 = icmp ult i64 %44, 30
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %48 = add nuw nsw i64 %1, 2
  %49 = icmp ult i64 %1, 4294967292
  br i1 %49, label %.preheader12, label %.preheader

.preheader:                                       ; preds = %47, %62
  %50 = phi i64 [ %63, %62 ], [ 0, %47 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_0_buff_0)
  br label %51

51:                                               ; preds = %51, %.preheader
  %52 = phi i64 [ 0, %.preheader ], [ %54, %51 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %53 = or disjoint i64 %52, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = add nuw nsw i64 %52, 8
  %55 = icmp ult i64 %53, 30
  br i1 %55, label %51, label %56

56:                                               ; preds = %51
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_0_buff_1)
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %60, %57 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %59 = or disjoint i64 %58, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %60 = add nuw nsw i64 %58, 8
  %61 = icmp ult i64 %59, 30
  br i1 %61, label %57, label %62

62:                                               ; preds = %57
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp ult i64 %50, 78
  br i1 %64, label %.preheader, label %65

65:                                               ; preds = %62
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  tail call void @zero_i16(ptr nonnull @C_L1L2_0_0_buff_0)
  br label %66

66:                                               ; preds = %66, %65
  %67 = phi i64 [ 0, %65 ], [ %69, %66 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %68 = or disjoint i64 %67, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_0, ptr nonnull @B_L2L1_0_0_cons_buff_0, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @C_L1L2_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @B_L2L1_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @A_L2L1_0_0_cons_buff_1, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @A_L2L1_0_0_cons_buff_1, ptr nonnull @B_L2L1_0_0_cons_buff_1, ptr nonnull @C_L1L2_0_0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %69 = add nuw nsw i64 %67, 8
  %70 = icmp ult i64 %68, 30
  br i1 %70, label %66, label %71

71:                                               ; preds = %66
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
