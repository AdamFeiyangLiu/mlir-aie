; ModuleID = '/home/adam/mlir-aie/programming_examples/basic/matrix_multiplication/vector_matrix/build/aie_1x288x288.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@inB0_cons_buff_1 = external global [32 x [32 x i16]]
@inB0_cons_buff_0 = external global [32 x [32 x i16]]
@outC0_buff_1 = external global [32 x i32]
@outC0_buff_0 = external global [32 x i32]
@inA_cons_buff_1 = external global [32 x i16]
@inA_cons_buff_0 = external global [32 x i16]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @zero_scalar_i32(ptr) local_unnamed_addr

declare void @matvec_scalar_i16_i32(ptr, ptr, ptr) local_unnamed_addr

define void @core_0_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %4 = icmp ult i64 %2, 4294967292
  br i1 %4, label %1, label %5

5:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  tail call void @zero_scalar_i32(ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_1, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_1, ptr nonnull @inA_cons_buff_1, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inA_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inB0_cons_buff_0, i64 32) ]
  tail call void @matvec_scalar_i16_i32(ptr nonnull @inB0_cons_buff_0, ptr nonnull @inA_cons_buff_0, ptr nonnull @outC0_buff_0)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
