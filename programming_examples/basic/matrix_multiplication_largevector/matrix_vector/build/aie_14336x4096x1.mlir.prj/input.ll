; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@memA0_cons_buff_1 = external global [1024 x i16]
@memA0_cons_buff_0 = external global [1024 x i16]
@inA0_cons_buff_1 = external global [32 x [32 x i16]]
@inA0_cons_buff_0 = external global [32 x [32 x i16]]
@outC0_buff_1 = external global [32 x i32]
@outC0_buff_0 = external global [32 x i32]
@memA1_cons_buff_1 = external global [1024 x i16]
@memA1_cons_buff_0 = external global [1024 x i16]
@inA1_cons_buff_1 = external global [32 x [32 x i16]]
@inA1_cons_buff_0 = external global [32 x [32 x i16]]
@outC1_buff_1 = external global [32 x i32]
@outC1_buff_0 = external global [32 x i32]
@memA2_cons_buff_1 = external global [1024 x i16]
@memA2_cons_buff_0 = external global [1024 x i16]
@inA2_cons_buff_1 = external global [32 x [32 x i16]]
@inA2_cons_buff_0 = external global [32 x [32 x i16]]
@outC2_buff_1 = external global [32 x i32]
@outC2_buff_0 = external global [32 x i32]
@memA3_cons_buff_1 = external global [1024 x i16]
@memA3_cons_buff_0 = external global [1024 x i16]
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
@inB_0_cons = external global [32 x i16]
@inB_1_cons = external global [32 x i16]
@inB_2_cons = external global [32 x i16]
@inB_3_cons = external global [32 x i16]
@inB = external global [32 x i16]
@outC3_cons = external global [32 x i32]
@outC3 = external global [32 x i32]
@inA3_cons = external global [32 x [32 x i16]]
@inA3 = external global [32 x [32 x i16]]
@memA3_cons = external global [1024 x i16]
@memA3 = external global [1024 x i16]
@outC2_cons = external global [32 x i32]
@outC2 = external global [32 x i32]
@inA2_cons = external global [32 x [32 x i16]]
@inA2 = external global [32 x [32 x i16]]
@memA2_cons = external global [1024 x i16]
@memA2 = external global [1024 x i16]
@outC1_cons = external global [32 x i32]
@outC1 = external global [32 x i32]
@inA1_cons = external global [32 x [32 x i16]]
@inA1 = external global [32 x [32 x i16]]
@memA1_cons = external global [1024 x i16]
@memA1 = external global [1024 x i16]
@outC0_cons = external global [32 x i32]
@outC0 = external global [32 x i32]
@inA0_cons = external global [32 x [32 x i16]]
@inA0 = external global [32 x [32 x i16]]
@memA0_cons = external global [1024 x i16]
@memA0 = external global [1024 x i16]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @zero_scalar_i32(ptr)

declare void @matvec_scalar_i16_i32(ptr, ptr, ptr)

define void @core_3_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @zero_scalar_i32(ptr @outC3_buff_0)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 128
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA3_cons_buff_0, ptr @inB_3_cons_buff_0, ptr @outC3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA3_cons_buff_1, ptr @inB_3_cons_buff_1, ptr @outC3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @zero_scalar_i32(ptr @outC3_buff_1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 128
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA3_cons_buff_0, ptr @inB_3_cons_buff_0, ptr @outC3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA3_cons_buff_1, ptr @inB_3_cons_buff_1, ptr @outC3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 51, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @zero_scalar_i32(ptr @outC3_buff_0)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 128
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA3_cons_buff_0, ptr @inB_3_cons_buff_0, ptr @outC3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA3_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA3_cons_buff_1, ptr @inB_3_cons_buff_1, ptr @outC3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_2_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @zero_scalar_i32(ptr @outC2_buff_0)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 128
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA2_cons_buff_0, ptr @inB_2_cons_buff_0, ptr @outC2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA2_cons_buff_1, ptr @inB_2_cons_buff_1, ptr @outC2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @zero_scalar_i32(ptr @outC2_buff_1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 128
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA2_cons_buff_0, ptr @inB_2_cons_buff_0, ptr @outC2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA2_cons_buff_1, ptr @inB_2_cons_buff_1, ptr @outC2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 51, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @zero_scalar_i32(ptr @outC2_buff_0)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 128
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA2_cons_buff_0, ptr @inB_2_cons_buff_0, ptr @outC2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA2_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA2_cons_buff_1, ptr @inB_2_cons_buff_1, ptr @outC2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_1_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @zero_scalar_i32(ptr @outC1_buff_0)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 128
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA1_cons_buff_0, ptr @inB_1_cons_buff_0, ptr @outC1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA1_cons_buff_1, ptr @inB_1_cons_buff_1, ptr @outC1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @zero_scalar_i32(ptr @outC1_buff_1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 128
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA1_cons_buff_0, ptr @inB_1_cons_buff_0, ptr @outC1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA1_cons_buff_1, ptr @inB_1_cons_buff_1, ptr @outC1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 51, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @zero_scalar_i32(ptr @outC1_buff_0)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 128
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA1_cons_buff_0, ptr @inB_1_cons_buff_0, ptr @outC1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA1_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA1_cons_buff_1, ptr @inB_1_cons_buff_1, ptr @outC1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_0_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967294
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @zero_scalar_i32(ptr @outC0_buff_0)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 128
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA0_cons_buff_0, ptr @inB_0_cons_buff_0, ptr @outC0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA0_cons_buff_1, ptr @inB_0_cons_buff_1, ptr @outC0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @zero_scalar_i32(ptr @outC0_buff_1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 128
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA0_cons_buff_0, ptr @inB_0_cons_buff_0, ptr @outC0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA0_cons_buff_1, ptr @inB_0_cons_buff_1, ptr @outC0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 51, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @zero_scalar_i32(ptr @outC0_buff_0)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 128
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_0, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA0_cons_buff_0, ptr @inB_0_cons_buff_0, ptr @outC0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @inB_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @outC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @inA0_cons_buff_1, i64 32) ]
  call void @matvec_scalar_i16_i32(ptr @inA0_cons_buff_1, ptr @inB_0_cons_buff_1, ptr @outC0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
