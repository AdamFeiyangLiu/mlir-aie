; ModuleID = '/home/adam/mlir-aie/programming_examples/basic/matrix_scalar_add/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in0_cons_buff_1 = external global [8 x [16 x i32]]
@in0_cons_buff_0 = external global [8 x [16 x i32]]
@out0_buff_1 = external global [8 x [16 x i32]]
@out0_buff_0 = external global [8 x [16 x i32]]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

; Function Attrs: nounwind
define void @core_0_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %202
  %2 = phi i64 [ 0, %0 ], [ %203, %202 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out0_buff_0, i64 32) ]
  br label %.preheader5

.preheader5:                                      ; preds = %1, %.preheader5
  %3 = phi i64 [ 0, %1 ], [ %100, %.preheader5 ]
  %4 = shl nuw nsw i64 %3, 4
  %5 = trunc i64 %4 to i20
  %6 = getelementptr i32, ptr @in0_cons_buff_0, i20 %5
  %7 = load i32, ptr %6, align 32
  %8 = add i32 %7, 1
  %9 = getelementptr i32, ptr @out0_buff_0, i20 %5
  store i32 %8, ptr %9, align 32
  %10 = trunc i64 %4 to i20
  %11 = or disjoint i20 %10, 1
  %12 = getelementptr i32, ptr @in0_cons_buff_0, i20 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  %15 = getelementptr i32, ptr @out0_buff_0, i20 %11
  store i32 %14, ptr %15, align 4
  %16 = trunc i64 %4 to i20
  %17 = or disjoint i20 %16, 2
  %18 = getelementptr i32, ptr @in0_cons_buff_0, i20 %17
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, 1
  %21 = getelementptr i32, ptr @out0_buff_0, i20 %17
  store i32 %20, ptr %21, align 8
  %22 = trunc i64 %4 to i20
  %23 = or disjoint i20 %22, 3
  %24 = getelementptr i32, ptr @in0_cons_buff_0, i20 %23
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  %27 = getelementptr i32, ptr @out0_buff_0, i20 %23
  store i32 %26, ptr %27, align 4
  %28 = trunc i64 %4 to i20
  %29 = or disjoint i20 %28, 4
  %30 = getelementptr i32, ptr @in0_cons_buff_0, i20 %29
  %31 = load i32, ptr %30, align 16
  %32 = add i32 %31, 1
  %33 = getelementptr i32, ptr @out0_buff_0, i20 %29
  store i32 %32, ptr %33, align 16
  %34 = trunc i64 %4 to i20
  %35 = or disjoint i20 %34, 5
  %36 = getelementptr i32, ptr @in0_cons_buff_0, i20 %35
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  %39 = getelementptr i32, ptr @out0_buff_0, i20 %35
  store i32 %38, ptr %39, align 4
  %40 = trunc i64 %4 to i20
  %41 = or disjoint i20 %40, 6
  %42 = getelementptr i32, ptr @in0_cons_buff_0, i20 %41
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, 1
  %45 = getelementptr i32, ptr @out0_buff_0, i20 %41
  store i32 %44, ptr %45, align 8
  %46 = trunc i64 %4 to i20
  %47 = or disjoint i20 %46, 7
  %48 = getelementptr i32, ptr @in0_cons_buff_0, i20 %47
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  %51 = getelementptr i32, ptr @out0_buff_0, i20 %47
  store i32 %50, ptr %51, align 4
  %52 = trunc i64 %4 to i20
  %53 = or disjoint i20 %52, 8
  %54 = getelementptr i32, ptr @in0_cons_buff_0, i20 %53
  %55 = load i32, ptr %54, align 32
  %56 = add i32 %55, 1
  %57 = getelementptr i32, ptr @out0_buff_0, i20 %53
  store i32 %56, ptr %57, align 32
  %58 = trunc i64 %4 to i20
  %59 = or disjoint i20 %58, 9
  %60 = getelementptr i32, ptr @in0_cons_buff_0, i20 %59
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  %63 = getelementptr i32, ptr @out0_buff_0, i20 %59
  store i32 %62, ptr %63, align 4
  %64 = trunc i64 %4 to i20
  %65 = or disjoint i20 %64, 10
  %66 = getelementptr i32, ptr @in0_cons_buff_0, i20 %65
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, 1
  %69 = getelementptr i32, ptr @out0_buff_0, i20 %65
  store i32 %68, ptr %69, align 8
  %70 = trunc i64 %4 to i20
  %71 = or disjoint i20 %70, 11
  %72 = getelementptr i32, ptr @in0_cons_buff_0, i20 %71
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  %75 = getelementptr i32, ptr @out0_buff_0, i20 %71
  store i32 %74, ptr %75, align 4
  %76 = trunc i64 %4 to i20
  %77 = or disjoint i20 %76, 12
  %78 = getelementptr i32, ptr @in0_cons_buff_0, i20 %77
  %79 = load i32, ptr %78, align 16
  %80 = add i32 %79, 1
  %81 = getelementptr i32, ptr @out0_buff_0, i20 %77
  store i32 %80, ptr %81, align 16
  %82 = trunc i64 %4 to i20
  %83 = or disjoint i20 %82, 13
  %84 = getelementptr i32, ptr @in0_cons_buff_0, i20 %83
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  %87 = getelementptr i32, ptr @out0_buff_0, i20 %83
  store i32 %86, ptr %87, align 4
  %88 = trunc i64 %4 to i20
  %89 = or disjoint i20 %88, 14
  %90 = getelementptr i32, ptr @in0_cons_buff_0, i20 %89
  %91 = load i32, ptr %90, align 8
  %92 = add i32 %91, 1
  %93 = getelementptr i32, ptr @out0_buff_0, i20 %89
  store i32 %92, ptr %93, align 8
  %94 = trunc i64 %4 to i20
  %95 = or disjoint i20 %94, 15
  %96 = getelementptr i32, ptr @in0_cons_buff_0, i20 %95
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, 1
  %99 = getelementptr i32, ptr @out0_buff_0, i20 %95
  store i32 %98, ptr %99, align 4
  %100 = add nuw nsw i64 %3, 1
  %101 = icmp ult i64 %3, 7
  br i1 %101, label %.preheader5, label %102

102:                                              ; preds = %.preheader5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out0_buff_1, i64 32) ]
  br label %.preheader4

.preheader4:                                      ; preds = %102, %.preheader4
  %103 = phi i64 [ 0, %102 ], [ %200, %.preheader4 ]
  %104 = shl nuw nsw i64 %103, 4
  %105 = trunc i64 %104 to i20
  %106 = getelementptr i32, ptr @in0_cons_buff_1, i20 %105
  %107 = load i32, ptr %106, align 32
  %108 = add i32 %107, 1
  %109 = getelementptr i32, ptr @out0_buff_1, i20 %105
  store i32 %108, ptr %109, align 32
  %110 = trunc i64 %104 to i20
  %111 = or disjoint i20 %110, 1
  %112 = getelementptr i32, ptr @in0_cons_buff_1, i20 %111
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, 1
  %115 = getelementptr i32, ptr @out0_buff_1, i20 %111
  store i32 %114, ptr %115, align 4
  %116 = trunc i64 %104 to i20
  %117 = or disjoint i20 %116, 2
  %118 = getelementptr i32, ptr @in0_cons_buff_1, i20 %117
  %119 = load i32, ptr %118, align 8
  %120 = add i32 %119, 1
  %121 = getelementptr i32, ptr @out0_buff_1, i20 %117
  store i32 %120, ptr %121, align 8
  %122 = trunc i64 %104 to i20
  %123 = or disjoint i20 %122, 3
  %124 = getelementptr i32, ptr @in0_cons_buff_1, i20 %123
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, 1
  %127 = getelementptr i32, ptr @out0_buff_1, i20 %123
  store i32 %126, ptr %127, align 4
  %128 = trunc i64 %104 to i20
  %129 = or disjoint i20 %128, 4
  %130 = getelementptr i32, ptr @in0_cons_buff_1, i20 %129
  %131 = load i32, ptr %130, align 16
  %132 = add i32 %131, 1
  %133 = getelementptr i32, ptr @out0_buff_1, i20 %129
  store i32 %132, ptr %133, align 16
  %134 = trunc i64 %104 to i20
  %135 = or disjoint i20 %134, 5
  %136 = getelementptr i32, ptr @in0_cons_buff_1, i20 %135
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 1
  %139 = getelementptr i32, ptr @out0_buff_1, i20 %135
  store i32 %138, ptr %139, align 4
  %140 = trunc i64 %104 to i20
  %141 = or disjoint i20 %140, 6
  %142 = getelementptr i32, ptr @in0_cons_buff_1, i20 %141
  %143 = load i32, ptr %142, align 8
  %144 = add i32 %143, 1
  %145 = getelementptr i32, ptr @out0_buff_1, i20 %141
  store i32 %144, ptr %145, align 8
  %146 = trunc i64 %104 to i20
  %147 = or disjoint i20 %146, 7
  %148 = getelementptr i32, ptr @in0_cons_buff_1, i20 %147
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, 1
  %151 = getelementptr i32, ptr @out0_buff_1, i20 %147
  store i32 %150, ptr %151, align 4
  %152 = trunc i64 %104 to i20
  %153 = or disjoint i20 %152, 8
  %154 = getelementptr i32, ptr @in0_cons_buff_1, i20 %153
  %155 = load i32, ptr %154, align 32
  %156 = add i32 %155, 1
  %157 = getelementptr i32, ptr @out0_buff_1, i20 %153
  store i32 %156, ptr %157, align 32
  %158 = trunc i64 %104 to i20
  %159 = or disjoint i20 %158, 9
  %160 = getelementptr i32, ptr @in0_cons_buff_1, i20 %159
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, 1
  %163 = getelementptr i32, ptr @out0_buff_1, i20 %159
  store i32 %162, ptr %163, align 4
  %164 = trunc i64 %104 to i20
  %165 = or disjoint i20 %164, 10
  %166 = getelementptr i32, ptr @in0_cons_buff_1, i20 %165
  %167 = load i32, ptr %166, align 8
  %168 = add i32 %167, 1
  %169 = getelementptr i32, ptr @out0_buff_1, i20 %165
  store i32 %168, ptr %169, align 8
  %170 = trunc i64 %104 to i20
  %171 = or disjoint i20 %170, 11
  %172 = getelementptr i32, ptr @in0_cons_buff_1, i20 %171
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  %175 = getelementptr i32, ptr @out0_buff_1, i20 %171
  store i32 %174, ptr %175, align 4
  %176 = trunc i64 %104 to i20
  %177 = or disjoint i20 %176, 12
  %178 = getelementptr i32, ptr @in0_cons_buff_1, i20 %177
  %179 = load i32, ptr %178, align 16
  %180 = add i32 %179, 1
  %181 = getelementptr i32, ptr @out0_buff_1, i20 %177
  store i32 %180, ptr %181, align 16
  %182 = trunc i64 %104 to i20
  %183 = or disjoint i20 %182, 13
  %184 = getelementptr i32, ptr @in0_cons_buff_1, i20 %183
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, 1
  %187 = getelementptr i32, ptr @out0_buff_1, i20 %183
  store i32 %186, ptr %187, align 4
  %188 = trunc i64 %104 to i20
  %189 = or disjoint i20 %188, 14
  %190 = getelementptr i32, ptr @in0_cons_buff_1, i20 %189
  %191 = load i32, ptr %190, align 8
  %192 = add i32 %191, 1
  %193 = getelementptr i32, ptr @out0_buff_1, i20 %189
  store i32 %192, ptr %193, align 8
  %194 = trunc i64 %104 to i20
  %195 = or disjoint i20 %194, 15
  %196 = getelementptr i32, ptr @in0_cons_buff_1, i20 %195
  %197 = load i32, ptr %196, align 4
  %198 = add i32 %197, 1
  %199 = getelementptr i32, ptr @out0_buff_1, i20 %195
  store i32 %198, ptr %199, align 4
  %200 = add nuw nsw i64 %103, 1
  %201 = icmp ult i64 %103, 7
  br i1 %201, label %.preheader4, label %202

202:                                              ; preds = %.preheader4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %203 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %203, 9223372036854775806
  br i1 %.not, label %204, label %1

204:                                              ; preds = %202
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out0_buff_0, i64 32) ]
  br label %.preheader

.preheader:                                       ; preds = %204, %.preheader
  %205 = phi i64 [ 0, %204 ], [ %302, %.preheader ]
  %206 = shl nuw nsw i64 %205, 4
  %207 = trunc i64 %206 to i20
  %208 = getelementptr i32, ptr @in0_cons_buff_0, i20 %207
  %209 = load i32, ptr %208, align 32
  %210 = add i32 %209, 1
  %211 = getelementptr i32, ptr @out0_buff_0, i20 %207
  store i32 %210, ptr %211, align 32
  %212 = trunc i64 %206 to i20
  %213 = or disjoint i20 %212, 1
  %214 = getelementptr i32, ptr @in0_cons_buff_0, i20 %213
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %215, 1
  %217 = getelementptr i32, ptr @out0_buff_0, i20 %213
  store i32 %216, ptr %217, align 4
  %218 = trunc i64 %206 to i20
  %219 = or disjoint i20 %218, 2
  %220 = getelementptr i32, ptr @in0_cons_buff_0, i20 %219
  %221 = load i32, ptr %220, align 8
  %222 = add i32 %221, 1
  %223 = getelementptr i32, ptr @out0_buff_0, i20 %219
  store i32 %222, ptr %223, align 8
  %224 = trunc i64 %206 to i20
  %225 = or disjoint i20 %224, 3
  %226 = getelementptr i32, ptr @in0_cons_buff_0, i20 %225
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %227, 1
  %229 = getelementptr i32, ptr @out0_buff_0, i20 %225
  store i32 %228, ptr %229, align 4
  %230 = trunc i64 %206 to i20
  %231 = or disjoint i20 %230, 4
  %232 = getelementptr i32, ptr @in0_cons_buff_0, i20 %231
  %233 = load i32, ptr %232, align 16
  %234 = add i32 %233, 1
  %235 = getelementptr i32, ptr @out0_buff_0, i20 %231
  store i32 %234, ptr %235, align 16
  %236 = trunc i64 %206 to i20
  %237 = or disjoint i20 %236, 5
  %238 = getelementptr i32, ptr @in0_cons_buff_0, i20 %237
  %239 = load i32, ptr %238, align 4
  %240 = add i32 %239, 1
  %241 = getelementptr i32, ptr @out0_buff_0, i20 %237
  store i32 %240, ptr %241, align 4
  %242 = trunc i64 %206 to i20
  %243 = or disjoint i20 %242, 6
  %244 = getelementptr i32, ptr @in0_cons_buff_0, i20 %243
  %245 = load i32, ptr %244, align 8
  %246 = add i32 %245, 1
  %247 = getelementptr i32, ptr @out0_buff_0, i20 %243
  store i32 %246, ptr %247, align 8
  %248 = trunc i64 %206 to i20
  %249 = or disjoint i20 %248, 7
  %250 = getelementptr i32, ptr @in0_cons_buff_0, i20 %249
  %251 = load i32, ptr %250, align 4
  %252 = add i32 %251, 1
  %253 = getelementptr i32, ptr @out0_buff_0, i20 %249
  store i32 %252, ptr %253, align 4
  %254 = trunc i64 %206 to i20
  %255 = or disjoint i20 %254, 8
  %256 = getelementptr i32, ptr @in0_cons_buff_0, i20 %255
  %257 = load i32, ptr %256, align 32
  %258 = add i32 %257, 1
  %259 = getelementptr i32, ptr @out0_buff_0, i20 %255
  store i32 %258, ptr %259, align 32
  %260 = trunc i64 %206 to i20
  %261 = or disjoint i20 %260, 9
  %262 = getelementptr i32, ptr @in0_cons_buff_0, i20 %261
  %263 = load i32, ptr %262, align 4
  %264 = add i32 %263, 1
  %265 = getelementptr i32, ptr @out0_buff_0, i20 %261
  store i32 %264, ptr %265, align 4
  %266 = trunc i64 %206 to i20
  %267 = or disjoint i20 %266, 10
  %268 = getelementptr i32, ptr @in0_cons_buff_0, i20 %267
  %269 = load i32, ptr %268, align 8
  %270 = add i32 %269, 1
  %271 = getelementptr i32, ptr @out0_buff_0, i20 %267
  store i32 %270, ptr %271, align 8
  %272 = trunc i64 %206 to i20
  %273 = or disjoint i20 %272, 11
  %274 = getelementptr i32, ptr @in0_cons_buff_0, i20 %273
  %275 = load i32, ptr %274, align 4
  %276 = add i32 %275, 1
  %277 = getelementptr i32, ptr @out0_buff_0, i20 %273
  store i32 %276, ptr %277, align 4
  %278 = trunc i64 %206 to i20
  %279 = or disjoint i20 %278, 12
  %280 = getelementptr i32, ptr @in0_cons_buff_0, i20 %279
  %281 = load i32, ptr %280, align 16
  %282 = add i32 %281, 1
  %283 = getelementptr i32, ptr @out0_buff_0, i20 %279
  store i32 %282, ptr %283, align 16
  %284 = trunc i64 %206 to i20
  %285 = or disjoint i20 %284, 13
  %286 = getelementptr i32, ptr @in0_cons_buff_0, i20 %285
  %287 = load i32, ptr %286, align 4
  %288 = add i32 %287, 1
  %289 = getelementptr i32, ptr @out0_buff_0, i20 %285
  store i32 %288, ptr %289, align 4
  %290 = trunc i64 %206 to i20
  %291 = or disjoint i20 %290, 14
  %292 = getelementptr i32, ptr @in0_cons_buff_0, i20 %291
  %293 = load i32, ptr %292, align 8
  %294 = add i32 %293, 1
  %295 = getelementptr i32, ptr @out0_buff_0, i20 %291
  store i32 %294, ptr %295, align 8
  %296 = trunc i64 %206 to i20
  %297 = or disjoint i20 %296, 15
  %298 = getelementptr i32, ptr @in0_cons_buff_0, i20 %297
  %299 = load i32, ptr %298, align 4
  %300 = add i32 %299, 1
  %301 = getelementptr i32, ptr @out0_buff_0, i20 %297
  store i32 %300, ptr %301, align 4
  %302 = add nuw nsw i64 %205, 1
  %303 = icmp ult i64 %205, 7
  br i1 %303, label %.preheader, label %304

304:                                              ; preds = %.preheader
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
