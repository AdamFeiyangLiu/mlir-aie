; ModuleID = '/home/adam/mlir-aie/programming_examples/basic/matrix_multiplication_largevector/matrix_vector/build/aie_8192x4096x1.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@inA0_cons_buff_1 = external global [32 x [32 x i16]]
@inA0_cons_buff_0 = external global [32 x [32 x i16]]
@outC0_buff_1 = external global [32 x i32]
@outC0_buff_0 = external global [32 x i32]
@inA1_cons_buff_1 = external global [32 x [32 x i16]]
@inA1_cons_buff_0 = external global [32 x [32 x i16]]
@outC1_buff_1 = external global [32 x i32]
@outC1_buff_0 = external global [32 x i32]
@inA2_cons_buff_1 = external global [32 x [32 x i16]]
@inA2_cons_buff_0 = external global [32 x [32 x i16]]
@outC2_buff_1 = external global [32 x i32]
@outC2_buff_0 = external global [32 x i32]
@inA3_cons_buff_1 = external global [32 x [32 x i16]]
@inA3_cons_buff_0 = external global [32 x [32 x i16]]
@outC3_buff_1 = external global [32 x i32]
@outC3_buff_0 = external global [32 x i32]
@inB_3_cons_buff_1 = external global [32 x i16]
@inB_3_cons_buff_0 = external global [32 x i16]
@inB_2_cons_buff_1 = external global [32 x i16]
@inB_2_cons_buff_0 = external global [32 x i16]
@inB_1_cons_buff_1 = external global [32 x i16]
@inB_1_cons_buff_0 = external global [32 x i16]
@inB_0_cons_buff_1 = external global [32 x i16]
@inB_0_cons_buff_0 = external global [32 x i16]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @zero_scalar_i32(ptr) local_unnamed_addr

declare void @matvec_scalar_i16_i32(ptr, ptr, ptr) local_unnamed_addr

define void @core_3_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC3_buff_0)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 126
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC3_buff_1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 126
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 4294967292
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC3_buff_0)
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi i64 [ 0, %17 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_0, ptr nonnull @inB_3_cons_buff_0, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA3_cons_buff_1, ptr nonnull @inB_3_cons_buff_1, ptr nonnull @outC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 126
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_2_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC2_buff_0)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 126
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC2_buff_1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 126
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 4294967292
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC2_buff_0)
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi i64 [ 0, %17 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_0, ptr nonnull @inB_2_cons_buff_0, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA2_cons_buff_1, ptr nonnull @inB_2_cons_buff_1, ptr nonnull @outC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 126
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_1_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC1_buff_0)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 126
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC1_buff_1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 126
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 4294967292
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC1_buff_0)
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi i64 [ 0, %17 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_0, ptr nonnull @inB_1_cons_buff_0, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA1_cons_buff_1, ptr nonnull @inB_1_cons_buff_1, ptr nonnull @outC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 126
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_0_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC0_buff_0)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 126
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC0_buff_1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 126
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 4294967292
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC0_buff_0)
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi i64 [ 0, %17 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_0_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_0_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 126
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
