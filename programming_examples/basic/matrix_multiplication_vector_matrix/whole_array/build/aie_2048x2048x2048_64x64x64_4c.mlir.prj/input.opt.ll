; ModuleID = '/home/adam/mlir-aie/programming_examples/basic/matrix_multiplication/whole_array/build/aie_2048x2048x2048_64x64x64_4c.mlir.prj/input.ll'
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
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_2_5() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_1_5() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_0_5() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_3_4() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_2_4() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_1_4() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_0_4() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_3_3() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_2_3() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_1_3() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_0_3() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_3_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_2_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_1_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

define void @core_0_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %18
  %1 = phi i64 [ 0, %0 ], [ %19, %18 ]
  br label %2

2:                                                ; preds = %.preheader, %15
  %3 = phi i64 [ 0, %.preheader ], [ %16, %15 ]
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
  %17 = icmp ult i64 %3, 62
  br i1 %17, label %2, label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i64 %1, 1
  %20 = icmp ult i64 %1, 4294967294
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
