; ModuleID = '/home/adam/mlir-aie/programming_examples/basic/matrix_multiplication/matrix_vector/build/aie_2560x2560x1.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@inA0_cons_buff_1 = external global [32 x [32 x i16]]
@inA0_cons_buff_0 = external global [32 x [32 x i16]]
@outC0_buff_1 = external global [32 x i32]
@outC0_buff_0 = external global [32 x i32]
@inB_cons_buff_1 = external global [32 x i16]
@inB_cons_buff_0 = external global [32 x i16]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @zero_scalar_i32(ptr) local_unnamed_addr

declare void @matvec_scalar_i16_i32(ptr, ptr, ptr) local_unnamed_addr

define void @core_0_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 0, %0 ], [ %13, %12 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC0_buff_0)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %5 = add nuw nsw i64 %4, 6
  %6 = icmp ult i64 %4, 30
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC0_buff_1)
  br label %8

8:                                                ; preds = %8, %7
  %9 = phi i64 [ 0, %7 ], [ %10, %8 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %10 = add nuw nsw i64 %9, 6
  %11 = icmp ult i64 %9, 30
  br i1 %11, label %8, label %12

12:                                               ; preds = %8
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %13 = add nuw nsw i64 %2, 2
  %14 = icmp ult i64 %2, 4294967292
  br i1 %14, label %1, label %15

15:                                               ; preds = %12
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC0_buff_0)
  br label %16

16:                                               ; preds = %16, %15
  %17 = phi i64 [ 0, %15 ], [ %18, %16 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_0, ptr nonnull @inB_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inA0_cons_buff_1, ptr nonnull @inB_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %18 = add nuw nsw i64 %17, 6
  %19 = icmp ult i64 %17, 30
  br i1 %19, label %16, label %20

20:                                               ; preds = %16
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
