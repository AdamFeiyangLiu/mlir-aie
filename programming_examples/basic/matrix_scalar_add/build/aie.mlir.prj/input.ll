; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_cons_buff_1 = external global [8 x [16 x i32]]
@in0_cons_buff_0 = external global [8 x [16 x i32]]
@out0_buff_1 = external global [8 x [16 x i32]]
@out0_buff_0 = external global [8 x [16 x i32]]
@out0_cons = external global [8 x [16 x i32]]
@out0 = external global [8 x [16 x i32]]
@in0_cons = external global [8 x [16 x i32]]
@in0 = external global [8 x [16 x i32]]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

define void @core_0_2() {
  br label %1

1:                                                ; preds = %38, %0
  %2 = phi i64 [ %39, %38 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %40

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  br label %5

5:                                                ; preds = %19, %4
  %6 = phi i64 [ %20, %19 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %21

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %18, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 16
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  %12 = mul i64 %6, 16
  %13 = add i64 %12, %9
  %14 = getelementptr i32, ptr @in0_cons_buff_0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @out0_buff_0, i64 32) ]
  %17 = getelementptr i32, ptr @out0_buff_0, i64 %13
  store i32 %16, ptr %17, align 4
  %18 = add i64 %9, 1
  br label %8

19:                                               ; preds = %8
  %20 = add i64 %6, 1
  br label %5

21:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  br label %22

22:                                               ; preds = %36, %21
  %23 = phi i64 [ %37, %36 ], [ 0, %21 ]
  %24 = icmp slt i64 %23, 8
  br i1 %24, label %25, label %38

25:                                               ; preds = %28, %22
  %26 = phi i64 [ %35, %28 ], [ 0, %22 ]
  %27 = icmp slt i64 %26, 16
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  %29 = mul i64 %23, 16
  %30 = add i64 %29, %26
  %31 = getelementptr i32, ptr @in0_cons_buff_1, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @out0_buff_1, i64 32) ]
  %34 = getelementptr i32, ptr @out0_buff_1, i64 %30
  store i32 %33, ptr %34, align 4
  %35 = add i64 %26, 1
  br label %25

36:                                               ; preds = %25
  %37 = add i64 %23, 1
  br label %22

38:                                               ; preds = %22
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %39 = add i64 %2, 2
  br label %1

40:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  br label %41

41:                                               ; preds = %55, %40
  %42 = phi i64 [ %56, %55 ], [ 0, %40 ]
  %43 = icmp slt i64 %42, 8
  br i1 %43, label %44, label %57

44:                                               ; preds = %47, %41
  %45 = phi i64 [ %54, %47 ], [ 0, %41 ]
  %46 = icmp slt i64 %45, 16
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  %48 = mul i64 %42, 16
  %49 = add i64 %48, %45
  %50 = getelementptr i32, ptr @in0_cons_buff_0, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @out0_buff_0, i64 32) ]
  %53 = getelementptr i32, ptr @out0_buff_0, i64 %49
  store i32 %52, ptr %53, align 4
  %54 = add i64 %45, 1
  br label %44

55:                                               ; preds = %44
  %56 = add i64 %42, 1
  br label %41

57:                                               ; preds = %41
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
