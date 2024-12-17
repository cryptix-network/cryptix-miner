; ModuleID = 'probe1.f0ab053cbc0122ed-cgu.0'
source_filename = "probe1.f0ab053cbc0122ed-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { ptr, [1 x i64] }

@alloc_8df0580a595a87d56789d20c7318e185 = private unnamed_addr constant <{ [166 x i8] }> <{ [166 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap" }>, align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"is_aligned_to: align is not a power-of-two" }>, align 1
@alloc_e92e94d0ff530782b571cfd99ec66aef = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_fad0cd83b7d1858a846a172eb260e593, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@0 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@alloc_de8bed92ee69641da4ebc580921c4e14 = private unnamed_addr constant <{ [119 x i8] }> <{ [119 x i8] c"C:\\Users\\Hotfix\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib/rustlib/src/rust\\library\\core\\src\\ptr\\const_ptr.rs" }>, align 1
@alloc_ddf9a22728c05e3f8981f9b61a6e45d4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_de8bed92ee69641da4ebc580921c4e14, [16 x i8] c"w\00\00\00\00\00\00\00C\06\00\00\0D\00\00\00" }>, align 8
@alloc_ffc44ed1670ebf78d81555edceff65f6 = private unnamed_addr constant <{ [69 x i8] }> <{ [69 x i8] c"unsafe precondition(s) violated: usize::unchecked_mul cannot overflow" }>, align 1
@alloc_d4d2a2a8539eafc62756407d946babb3 = private unnamed_addr constant <{ [110 x i8] }> <{ [110 x i8] c"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null" }>, align 1
@alloc_20b3d155afd5c58c42e598b7e6d186ef = private unnamed_addr constant <{ [93 x i8] }> <{ [93 x i8] c"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null" }>, align 1
@alloc_ab14703751a9eb3585c49b2e55e9a9e5 = private unnamed_addr constant <{ [104 x i8] }> <{ [104 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false" }>, align 1
@alloc_cd1513ae8d1ae22acf9342b8dfa1561d = private unnamed_addr constant <{ [164 x i8] }> <{ [164 x i8] c"unsafe precondition(s) violated: Layout::from_size_align_unchecked requires that align is a power of 2 and the rounded-up allocation size does not exceed isize::MAX" }>, align 1
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant <{ [61 x i8] }> <{ [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize" }>, align 1
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_eab5d04767146d7d9b93b60d28ef530a = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@alloc_53973d2fe29b4adba8bb7390b5678745 = private unnamed_addr constant <{ [8 x i8] }> zeroinitializer, align 8

; core::intrinsics::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h3d3457cc89ea68a9E(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count) unnamed_addr #0 personality ptr @__CxxFrameHandler3 {
start:
  %0 = alloca [4 x i8], align 4
  %1 = alloca [4 x i8], align 4
  %_23 = alloca [48 x i8], align 8
  %_14 = alloca [48 x i8], align 8
  %_12 = ptrtoint ptr %src to i64
  %2 = icmp eq i64 %_12, 0
  br i1 %2, label %bb8, label %bb9

bb8:                                              ; preds = %start
  br label %bb6

bb9:                                              ; preds = %start
  %3 = call i64 @llvm.ctpop.i64(i64 %align)
  %4 = trunc i64 %3 to i32
  store i32 %4, ptr %1, align 4
  %_15 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %_15, 1
  br i1 %5, label %bb10, label %bb11

bb6:                                              ; preds = %bb10, %bb8
  br label %bb7

bb10:                                             ; preds = %bb9
  %_19 = sub i64 %align, 1
  %_18 = and i64 %_12, %_19
  %_6 = icmp eq i64 %_18, 0
  br i1 %_6, label %bb1, label %bb6

bb11:                                             ; preds = %bb9
  store ptr @alloc_e92e94d0ff530782b571cfd99ec66aef, ptr %_14, align 8
  %6 = getelementptr inbounds i8, ptr %_14, i64 8
  store i64 1, ptr %6, align 8
  %7 = load ptr, ptr @0, align 8
  %8 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %9 = getelementptr inbounds i8, ptr %_14, i64 32
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  store i64 %8, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %_14, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  store i64 0, ptr %12, align 8
; invoke core::panicking::panic_fmt
  invoke void @_ZN4core9panicking9panic_fmt17hf0bd25a1cab5d3d4E(ptr align 8 %_14, ptr align 8 @alloc_ddf9a22728c05e3f8981f9b61a6e45d4) #14
          to label %unreachable unwind label %cs_terminate

bb1:                                              ; preds = %bb10
  %_21 = ptrtoint ptr %dst to i64
  %13 = icmp eq i64 %_21, 0
  br i1 %13, label %bb13, label %bb14

bb7:                                              ; preds = %bb4, %bb5, %bb6
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h346e6149e34565b2E(ptr align 1 @alloc_8df0580a595a87d56789d20c7318e185, i64 166) #15
  unreachable

bb13:                                             ; preds = %bb1
  br label %bb5

bb14:                                             ; preds = %bb1
  %14 = call i64 @llvm.ctpop.i64(i64 %align)
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %0, align 4
  %_24 = load i32, ptr %0, align 4
  %16 = icmp eq i32 %_24, 1
  br i1 %16, label %bb15, label %bb16

bb5:                                              ; preds = %bb15, %bb13
  br label %bb7

bb15:                                             ; preds = %bb14
  %_28 = sub i64 %align, 1
  %_27 = and i64 %_21, %_28
  %_7 = icmp eq i64 %_27, 0
  br i1 %_7, label %bb2, label %bb5

bb16:                                             ; preds = %bb14
  store ptr @alloc_e92e94d0ff530782b571cfd99ec66aef, ptr %_23, align 8
  %17 = getelementptr inbounds i8, ptr %_23, i64 8
  store i64 1, ptr %17, align 8
  %18 = load ptr, ptr @0, align 8
  %19 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %20 = getelementptr inbounds i8, ptr %_23, i64 32
  store ptr %18, ptr %20, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  store i64 %19, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %_23, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %22, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 8
  store i64 0, ptr %23, align 8
; invoke core::panicking::panic_fmt
  invoke void @_ZN4core9panicking9panic_fmt17hf0bd25a1cab5d3d4E(ptr align 8 %_23, ptr align 8 @alloc_ddf9a22728c05e3f8981f9b61a6e45d4) #14
          to label %unreachable unwind label %cs_terminate

bb2:                                              ; preds = %bb15
; invoke core::ub_checks::is_nonoverlapping::runtime
  %_9 = invoke zeroext i1 @_ZN4core9ub_checks17is_nonoverlapping7runtime17h259f027fdec2fc3aE(ptr %src, ptr %dst, i64 %size, i64 %count)
          to label %bb18 unwind label %cs_terminate

cs_terminate:                                     ; preds = %bb11, %bb16, %bb2
  %catchswitch = catchswitch within none [label %cp_terminate] unwind to caller

cp_terminate:                                     ; preds = %cs_terminate
  %catchpad = catchpad within %catchswitch [ptr null, i32 64, ptr null]
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17hc400f646e12e3d67E() #16 [ "funclet"(token %catchpad) ]
  unreachable

bb18:                                             ; preds = %bb2
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %bb18
  br label %bb7

bb3:                                              ; preds = %bb18
  ret void

unreachable:                                      ; preds = %bb11, %bb16
  unreachable
}

; core::intrinsics::unlikely
; Function Attrs: nounwind uwtable
define internal zeroext i1 @_ZN4core10intrinsics8unlikely17hb7e59027edcb56c6E(i1 zeroext %b) unnamed_addr #1 {
start:
  ret i1 %b
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint uwtable
define void @_ZN4core3fmt9Arguments6new_v117h2c59aec95dfbf70cE(ptr sret([48 x i8]) align 8 %_0, ptr align 8 %pieces, ptr align 8 %args) unnamed_addr #2 {
start:
  store ptr %pieces, ptr %_0, align 8
  %0 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 1, ptr %0, align 8
  %1 = load ptr, ptr @0, align 8
  %2 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %3 = getelementptr inbounds i8, ptr %_0, i64 32
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %2, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %_0, i64 16
  store ptr %args, ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 1, ptr %6, align 8
  ret void
}

; core::num::<impl usize>::unchecked_mul::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_mul18precondition_check17h43bfff0cf69aa625E"(i64 %lhs, i64 %rhs) unnamed_addr #0 {
start:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %lhs, i64 %rhs)
  %_6.0 = extractvalue { i64, i1 } %0, 0
  %_6.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_6.1, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h346e6149e34565b2E(ptr align 1 @alloc_ffc44ed1670ebf78d81555edceff65f6, i64 69) #15
  unreachable
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17hc74419e7eb6abf5fE(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %0, i64 %1) unnamed_addr #2 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %1, ptr %2, align 8
  %3 = load ptr, ptr %_2, align 8
  %4 = getelementptr inbounds i8, ptr %_2, i64 8
  %5 = load i64, ptr %4, align 8
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h9a51c6310d938143E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %3, i64 %5)
  ret void
}

; core::ptr::read_volatile::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core3ptr13read_volatile18precondition_check17hceeb92df9b67236aE(ptr %addr, i64 %align) unnamed_addr #0 personality ptr @__CxxFrameHandler3 {
start:
  %0 = alloca [4 x i8], align 4
  %_8 = alloca [48 x i8], align 8
  %_6 = ptrtoint ptr %addr to i64
  %1 = icmp eq i64 %_6, 0
  br i1 %1, label %bb3, label %bb4

bb3:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %start
  %2 = call i64 @llvm.ctpop.i64(i64 %align)
  %3 = trunc i64 %2 to i32
  store i32 %3, ptr %0, align 4
  %_9 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %_9, 1
  br i1 %4, label %bb5, label %bb6

bb2:                                              ; preds = %bb5, %bb3
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h346e6149e34565b2E(ptr align 1 @alloc_d4d2a2a8539eafc62756407d946babb3, i64 110) #15
  unreachable

bb5:                                              ; preds = %bb4
  %_13 = sub i64 %align, 1
  %_12 = and i64 %_6, %_13
  %_3 = icmp eq i64 %_12, 0
  br i1 %_3, label %bb1, label %bb2

bb6:                                              ; preds = %bb4
  store ptr @alloc_e92e94d0ff530782b571cfd99ec66aef, ptr %_8, align 8
  %5 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 1, ptr %5, align 8
  %6 = load ptr, ptr @0, align 8
  %7 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %8 = getelementptr inbounds i8, ptr %_8, i64 32
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  store i64 %7, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %_8, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 8
  store i64 0, ptr %11, align 8
; invoke core::panicking::panic_fmt
  invoke void @_ZN4core9panicking9panic_fmt17hf0bd25a1cab5d3d4E(ptr align 8 %_8, ptr align 8 @alloc_ddf9a22728c05e3f8981f9b61a6e45d4) #14
          to label %unreachable unwind label %cs_terminate

bb1:                                              ; preds = %bb5
  ret void

cs_terminate:                                     ; preds = %bb6
  %catchswitch = catchswitch within none [label %cp_terminate] unwind to caller

cp_terminate:                                     ; preds = %cs_terminate
  %catchpad = catchpad within %catchswitch [ptr null, i32 64, ptr null]
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17hc400f646e12e3d67E() #16 [ "funclet"(token %catchpad) ]
  unreachable

unreachable:                                      ; preds = %bb6
  unreachable
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f0e5de7dfe19e1eE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc521854d020cc74eE"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc521854d020cc74eE"(ptr align 8 %_1) unnamed_addr #3 personality ptr @__CxxFrameHandler3 {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h287d085e9da991ffE"(ptr align 8 %_1)
          to label %bb4 unwind label %funclet_bb3

bb3:                                              ; preds = %funclet_bb3
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf49b838fae393a35E"(ptr align 8 %_1) #17 [ "funclet"(token %cleanuppad) ]
  cleanupret from %cleanuppad unwind to caller

funclet_bb3:                                      ; preds = %start
  %cleanuppad = cleanuppad within none []
  br label %bb3

bb4:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf49b838fae393a35E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf49b838fae393a35E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he2ef27520c647697E"(ptr align 8 %_1)
  ret void
}

; core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h832f283cc982e14dE"(ptr %ptr) unnamed_addr #0 {
start:
  %_5 = ptrtoint ptr %ptr to i64
  %0 = icmp eq i64 %_5, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h346e6149e34565b2E(ptr align 1 @alloc_20b3d155afd5c58c42e598b7e6d186ef, i64 93) #15
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core4hint16assert_unchecked18precondition_check17ha97ca847c4fb129dE(i1 zeroext %cond) unnamed_addr #0 {
start:
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h346e6149e34565b2E(ptr align 1 @alloc_ab14703751a9eb3585c49b2e55e9a9e5, i64 104) #15
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::alloc::layout::Layout::repeat_packed
; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout13repeat_packed17h3e86e50cc7d70cb8E(ptr align 8 %self, i64 %n) unnamed_addr #2 {
start:
  %0 = alloca [1 x i8], align 1
  %_18 = alloca [8 x i8], align 8
  %_3 = alloca [16 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 8
  %self1 = load i64, ptr %1, align 8
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self1, i64 %n)
  %_10.0 = extractvalue { i64, i1 } %2, 0
  %_10.1 = extractvalue { i64, i1 } %2, 1
  %3 = zext i1 %_10.1 to i8
  store i8 %3, ptr %0, align 1
  %4 = load i8, ptr %0, align 1
  %_7 = trunc i8 %4 to i1
  br i1 %_7, label %bb3, label %bb4

bb4:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %_3, i64 8
  store i64 %_10.0, ptr %5, align 8
  store i64 1, ptr %_3, align 8
  %6 = getelementptr inbounds i8, ptr %_3, i64 8
  %size = load i64, ptr %6, align 8
  %align = load i64, ptr %self, align 8
  store i64 %align, ptr %_18, align 8
  %_19 = load i64, ptr %_18, align 8
  %_20 = icmp uge i64 %_19, 1
  %_21 = icmp ule i64 %_19, -9223372036854775808
  %_22 = and i1 %_20, %_21
  %_15 = sub nuw i64 -9223372036854775808, %_19
  %_14 = icmp ugt i64 %size, %_15
  br i1 %_14, label %bb6, label %bb7

bb3:                                              ; preds = %start
  %7 = load i64, ptr @0, align 8
  %8 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store i64 %7, ptr %_0, align 8
  %9 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %8, ptr %9, align 8
  br label %bb1

bb7:                                              ; preds = %bb4
  store i64 %align, ptr %_0, align 8
  %10 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %size, ptr %10, align 8
  br label %bb5

bb6:                                              ; preds = %bb4
  %11 = load i64, ptr @0, align 8
  %12 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store i64 %11, ptr %_0, align 8
  %13 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %12, ptr %13, align 8
  br label %bb5

bb5:                                              ; preds = %bb6, %bb7
  br label %bb1

bb1:                                              ; preds = %bb3, %bb5
  %14 = load i64, ptr %_0, align 8
  %15 = getelementptr inbounds i8, ptr %_0, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = insertvalue { i64, i64 } poison, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; core::alloc::layout::Layout::from_size_align_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h25dcbdd5b2157427E(i64 %size, i64 %align) unnamed_addr #0 personality ptr @__CxxFrameHandler3 {
start:
; invoke core::alloc::layout::Layout::is_size_align_valid
  %_3 = invoke zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hc4025c8a018e161eE(i64 %size, i64 %align)
          to label %bb1 unwind label %cs_terminate

cs_terminate:                                     ; preds = %start
  %catchswitch = catchswitch within none [label %cp_terminate] unwind to caller

cp_terminate:                                     ; preds = %cs_terminate
  %catchpad = catchpad within %catchswitch [ptr null, i32 64, ptr null]
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17hc400f646e12e3d67E() #16 [ "funclet"(token %catchpad) ]
  unreachable

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h346e6149e34565b2E(ptr align 1 @alloc_cd1513ae8d1ae22acf9342b8dfa1561d, i64 164) #15
  unreachable

bb2:                                              ; preds = %bb1
  ret void
}

; core::alloc::layout::Layout::repeat
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core5alloc6layout6Layout6repeat17ha2ec3f0928c375cdE(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self, i64 %n) unnamed_addr #2 {
start:
  %_17 = alloca [8 x i8], align 8
  %_8 = alloca [24 x i8], align 8
  %_4 = alloca [16 x i8], align 8
  %padded = alloca [16 x i8], align 8
  %align = load i64, ptr %self, align 8
  store i64 %align, ptr %_17, align 8
  %_18 = load i64, ptr %_17, align 8
  %_19 = icmp uge i64 %_18, 1
  %_20 = icmp ule i64 %_18, -9223372036854775808
  %_21 = and i1 %_19, %_20
  %align_m1 = sub nuw i64 %_18, 1
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_15 = load i64, ptr %0, align 8
  %_14 = add nuw i64 %_15, %align_m1
  %_16 = xor i64 %align_m1, -1
  %new_size = and i64 %_14, %_16
  br label %bb5

bb5:                                              ; preds = %start
; call core::alloc::layout::Layout::from_size_align_unchecked::precondition_check
  call void @_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h25dcbdd5b2157427E(i64 %new_size, i64 %_18) #18
  br label %bb6

bb6:                                              ; preds = %bb5
  %1 = getelementptr inbounds i8, ptr %padded, i64 8
  store i64 %new_size, ptr %1, align 8
  store i64 %_18, ptr %padded, align 8
; call core::alloc::layout::Layout::repeat_packed
  %2 = call { i64, i64 } @_ZN4core5alloc6layout6Layout13repeat_packed17h3e86e50cc7d70cb8E(ptr align 8 %padded, i64 %n)
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_4, align 8
  %5 = getelementptr inbounds i8, ptr %_4, i64 8
  store i64 %4, ptr %5, align 8
  %6 = load i64, ptr %_4, align 8
  %7 = icmp eq i64 %6, 0
  %_6 = select i1 %7, i64 1, i64 0
  %8 = icmp eq i64 %_6, 0
  br i1 %8, label %bb2, label %bb3

bb2:                                              ; preds = %bb6
  %repeated.0 = load i64, ptr %_4, align 8
  %9 = getelementptr inbounds i8, ptr %_4, i64 8
  %repeated.1 = load i64, ptr %9, align 8
  store i64 %repeated.0, ptr %_8, align 8
  %10 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %repeated.1, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %_8, i64 16
  store i64 %new_size, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_8, i64 24, i1 false)
  br label %bb4

bb3:                                              ; preds = %bb6
  store i64 0, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void

bb7:                                              ; No predecessors!
  unreachable
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hf1188797ccf23f31E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %0, i64 %1, ptr align 8 %default) unnamed_addr #2 personality ptr @__CxxFrameHandler3 {
start:
  %_10 = alloca [1 x i8], align 1
  %_9 = alloca [1 x i8], align 1
  %self = alloca [16 x i8], align 8
  store ptr %0, ptr %self, align 8
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %1, ptr %2, align 8
  store i8 1, ptr %_10, align 1
  store i8 1, ptr %_9, align 1
  %3 = load ptr, ptr %self, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq i64 %4, 0
  %_4 = select i1 %5, i64 0, i64 1
  %6 = icmp eq i64 %_4, 0
  br i1 %6, label %bb2, label %bb3

bb2:                                              ; preds = %start
  store i8 0, ptr %_10, align 1
; invoke alloc::fmt::format::{{closure}}
  invoke void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h4463d3ee18b47ff5E"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %default)
          to label %bb5 unwind label %funclet_bb11

bb3:                                              ; preds = %start
  %t.0 = load ptr, ptr %self, align 8
  %7 = getelementptr inbounds i8, ptr %self, i64 8
  %t.1 = load i64, ptr %7, align 8
  store i8 0, ptr %_9, align 1
; invoke core::ops::function::FnOnce::call_once
  invoke void @_ZN4core3ops8function6FnOnce9call_once17hc74419e7eb6abf5fE(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %t.0, i64 %t.1)
          to label %bb4 unwind label %funclet_bb11

bb11:                                             ; preds = %funclet_bb11
  %8 = load i8, ptr %_9, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %bb10, label %bb11_cleanup_trampoline_bb7

funclet_bb11:                                     ; preds = %bb3, %bb2
  %cleanuppad = cleanuppad within none []
  br label %bb11

bb5:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb9, %bb4, %bb5
  ret void

bb4:                                              ; preds = %bb3
  %10 = load i8, ptr %_10, align 1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %bb9, label %bb6

bb9:                                              ; preds = %bb4
  br label %bb6

bb7:                                              ; preds = %funclet_bb7
  %12 = load i8, ptr %_10, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb12, label %bb8

funclet_bb7:                                      ; preds = %bb10, %bb11_cleanup_trampoline_bb7
  %cleanuppad1 = cleanuppad within none []
  br label %bb7

bb11_cleanup_trampoline_bb7:                      ; preds = %bb11
  cleanupret from %cleanuppad unwind label %funclet_bb7

bb10:                                             ; preds = %bb11
  cleanupret from %cleanuppad unwind label %funclet_bb7

bb8:                                              ; preds = %bb12, %bb7
  cleanupret from %cleanuppad1 unwind to caller

bb12:                                             ; preds = %bb7
  br label %bb8

bb1:                                              ; No predecessors!
  unreachable
}

; core::ub_checks::is_nonoverlapping::runtime
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN4core9ub_checks17is_nonoverlapping7runtime17h259f027fdec2fc3aE(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #2 {
start:
  %0 = alloca [1 x i8], align 1
  %diff = alloca [8 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %src_usize = ptrtoint ptr %src to i64
  %dst_usize = ptrtoint ptr %dst to i64
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %size, i64 %count)
  %_15.0 = extractvalue { i64, i1 } %1, 0
  %_15.1 = extractvalue { i64, i1 } %1, 1
  %2 = zext i1 %_15.1 to i8
  store i8 %2, ptr %0, align 1
  %3 = load i8, ptr %0, align 1
  %_12 = trunc i8 %3 to i1
  br i1 %_12, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %4 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %_15.0, ptr %4, align 8
  store i64 1, ptr %_9, align 8
  %5 = getelementptr inbounds i8, ptr %_9, i64 8
  %size1 = load i64, ptr %5, align 8
  %_22 = icmp ult i64 %src_usize, %dst_usize
  br i1 %_22, label %bb4, label %bb5

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h346e6149e34565b2E(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #15
  unreachable

bb5:                                              ; preds = %bb3
  %6 = sub i64 %src_usize, %dst_usize
  store i64 %6, ptr %diff, align 8
  br label %bb6

bb4:                                              ; preds = %bb3
  %7 = sub i64 %dst_usize, %src_usize
  store i64 %7, ptr %diff, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %_11 = load i64, ptr %diff, align 8
  %_0 = icmp uge i64 %_11, %size1
  ret i1 %_0
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17he6afcb4159c16de9E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %s.0, i64 %s.1) unnamed_addr #2 {
start:
  %v = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::with_capacity_in
  %0 = call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h38327ec7fbf3e80cE"(i64 %s.1, i64 1, i64 1)
  %_10.0 = extractvalue { i64, ptr } %0, 0
  %_10.1 = extractvalue { i64, ptr } %0, 1
  store i64 %_10.0, ptr %v, align 8
  %1 = getelementptr inbounds i8, ptr %v, i64 8
  store ptr %_10.1, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %v, i64 8
  %self = load ptr, ptr %3, align 8
  br label %bb2

bb2:                                              ; preds = %start
; call core::intrinsics::copy_nonoverlapping::precondition_check
  call void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h3d3457cc89ea68a9E(ptr %s.0, ptr %self, i64 1, i64 1, i64 %s.1) #18
  br label %bb4

bb4:                                              ; preds = %bb2
  %4 = mul i64 %s.1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %self, ptr align 1 %s.0, i64 %4, i1 false)
  %5 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 %s.1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %v, i64 24, i1 false)
  ret void
}

; alloc::fmt::format
; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc3fmt6format17hfd7d8e37179a4f42E(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %args) unnamed_addr #2 {
start:
  %_2 = alloca [16 x i8], align 8
  %_6.0 = load ptr, ptr %args, align 8
  %0 = getelementptr inbounds i8, ptr %args, i64 8
  %_6.1 = load i64, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %args, i64 16
  %_7.0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %_7.1 = load i64, ptr %2, align 8
  %3 = icmp eq i64 %_6.1, 0
  br i1 %3, label %bb4, label %bb5

bb4:                                              ; preds = %start
  %4 = icmp eq i64 %_7.1, 0
  br i1 %4, label %bb8, label %bb3

bb5:                                              ; preds = %start
  %5 = icmp eq i64 %_6.1, 1
  br i1 %5, label %bb6, label %bb3

bb8:                                              ; preds = %bb4
  store ptr inttoptr (i64 1 to ptr), ptr %_2, align 8
  %6 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 0, ptr %6, align 8
  br label %bb2

bb3:                                              ; preds = %bb6, %bb5, %bb4
  %7 = load ptr, ptr @0, align 8
  %8 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store ptr %7, ptr %_2, align 8
  %9 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %8, ptr %9, align 8
  br label %bb2

bb2:                                              ; preds = %bb3, %bb7, %bb8
  %10 = load ptr, ptr %_2, align 8
  %11 = getelementptr inbounds i8, ptr %_2, i64 8
  %12 = load i64, ptr %11, align 8
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hf1188797ccf23f31E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %10, i64 %12, ptr align 8 %args)
  ret void

bb6:                                              ; preds = %bb5
  %13 = icmp eq i64 %_7.1, 0
  br i1 %13, label %bb7, label %bb3

bb7:                                              ; preds = %bb6
  %s = getelementptr inbounds [0 x { ptr, i64 }], ptr %_6.0, i64 0, i64 0
  %14 = getelementptr inbounds [0 x { ptr, i64 }], ptr %_6.0, i64 0, i64 0
  %_12.0 = load ptr, ptr %14, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 8
  %_12.1 = load i64, ptr %15, align 8
  store ptr %_12.0, ptr %_2, align 8
  %16 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %_12.1, ptr %16, align 8
  br label %bb2
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h4463d3ee18b47ff5E"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %_1) unnamed_addr #2 {
start:
  %_2 = alloca [48 x i8], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_2, ptr align 8 %_1, i64 48, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17h4f3dc411215a94bcE(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %_2)
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h9a51c6310d938143E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %self.0, i64 %self.1) unnamed_addr #2 {
start:
  %bytes = alloca [24 x i8], align 8
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17he6afcb4159c16de9E"(ptr sret([24 x i8]) align 8 %bytes, ptr align 1 %self.0, i64 %self.1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %bytes, i64 24, i1 false)
  ret void
}

; alloc::alloc::alloc_zeroed
; Function Attrs: inlinehint uwtable
define internal ptr @_ZN5alloc5alloc12alloc_zeroed17h4bc7cbe5b4696546E(i64 %0, i64 %1) unnamed_addr #2 {
start:
  %2 = alloca [1 x i8], align 1
  %_11 = alloca [8 x i8], align 8
  %layout = alloca [16 x i8], align 8
  store i64 %0, ptr %layout, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %3, align 8
  br label %bb3

bb3:                                              ; preds = %start
; call core::ptr::read_volatile::precondition_check
  call void @_ZN4core3ptr13read_volatile18precondition_check17hceeb92df9b67236aE(ptr @__rust_no_alloc_shim_is_unstable, i64 1) #18
  br label %bb5

bb5:                                              ; preds = %bb3
  %4 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  store i8 %4, ptr %2, align 1
  %_2 = load i8, ptr %2, align 1
  %5 = getelementptr inbounds i8, ptr %layout, i64 8
  %_3 = load i64, ptr %5, align 8
  %self = load i64, ptr %layout, align 8
  store i64 %self, ptr %_11, align 8
  %_12 = load i64, ptr %_11, align 8
  %_13 = icmp uge i64 %_12, 1
  %_14 = icmp ule i64 %_12, -9223372036854775808
  %_15 = and i1 %_13, %_14
  %_0 = call ptr @__rust_alloc_zeroed(i64 %_3, i64 %_12) #18
  ret ptr %_0
}

; alloc::alloc::alloc
; Function Attrs: inlinehint uwtable
define internal ptr @_ZN5alloc5alloc5alloc17hccbba79c01a249d9E(i64 %0, i64 %1) unnamed_addr #2 {
start:
  %2 = alloca [1 x i8], align 1
  %_11 = alloca [8 x i8], align 8
  %layout = alloca [16 x i8], align 8
  store i64 %0, ptr %layout, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %3, align 8
  br label %bb3

bb3:                                              ; preds = %start
; call core::ptr::read_volatile::precondition_check
  call void @_ZN4core3ptr13read_volatile18precondition_check17hceeb92df9b67236aE(ptr @__rust_no_alloc_shim_is_unstable, i64 1) #18
  br label %bb5

bb5:                                              ; preds = %bb3
  %4 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  store i8 %4, ptr %2, align 1
  %_2 = load i8, ptr %2, align 1
  %5 = getelementptr inbounds i8, ptr %layout, i64 8
  %_3 = load i64, ptr %5, align 8
  %self = load i64, ptr %layout, align 8
  store i64 %self, ptr %_11, align 8
  %_12 = load i64, ptr %_11, align 8
  %_13 = icmp uge i64 %_12, 1
  %_14 = icmp ule i64 %_12, -9223372036854775808
  %_15 = and i1 %_13, %_14
  %_0 = call ptr @__rust_alloc(i64 %_3, i64 %_12) #18
  ret ptr %_0
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hfbf50dfc484ffec6E(ptr align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #2 {
start:
  %ptr = alloca [16 x i8], align 8
  %_19 = alloca [8 x i8], align 8
  %self2 = alloca [8 x i8], align 8
  %self1 = alloca [8 x i8], align 8
  %_10 = alloca [8 x i8], align 8
  %raw_ptr = alloca [8 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %layout = alloca [16 x i8], align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  %size = load i64, ptr %3, align 8
  %4 = icmp eq i64 %size, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %self3 = load i64, ptr %layout, align 8
  store i64 %self3, ptr %_19, align 8
  %_20 = load i64, ptr %_19, align 8
  %_21 = icmp uge i64 %_20, 1
  %_22 = icmp ule i64 %_20, -9223372036854775808
  %_23 = and i1 %_21, %_22
  %ptr4 = getelementptr i8, ptr null, i64 %_20
  br label %bb7

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb7:                                              ; preds = %bb2
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h832f283cc982e14dE"(ptr %ptr4) #18
  store ptr %ptr4, ptr %ptr, align 8
  %5 = getelementptr inbounds i8, ptr %ptr, i64 8
  store i64 0, ptr %5, align 8
  br label %bb10

bb10:                                             ; preds = %bb7
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h832f283cc982e14dE"(ptr %ptr4) #18
  br label %bb12

bb12:                                             ; preds = %bb10
  %_32.0 = load ptr, ptr %ptr, align 8
  %6 = getelementptr inbounds i8, ptr %ptr, i64 8
  %_32.1 = load i64, ptr %6, align 8
  store ptr %_32.0, ptr %_0, align 8
  %7 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_32.1, ptr %7, align 8
  br label %bb6

bb6:                                              ; preds = %bb20, %bb13, %bb12
  %8 = load ptr, ptr %_0, align 8
  %9 = getelementptr inbounds i8, ptr %_0, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = insertvalue { ptr, i64 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i64 } %11, i64 %10, 1
  ret { ptr, i64 } %12

bb4:                                              ; preds = %bb1
  %13 = load i64, ptr %layout, align 8
  %14 = getelementptr inbounds i8, ptr %layout, i64 8
  %15 = load i64, ptr %14, align 8
; call alloc::alloc::alloc
  %16 = call ptr @_ZN5alloc5alloc5alloc17hccbba79c01a249d9E(i64 %13, i64 %15)
  store ptr %16, ptr %raw_ptr, align 8
  br label %bb5

bb3:                                              ; preds = %bb1
  %17 = load i64, ptr %layout, align 8
  %18 = getelementptr inbounds i8, ptr %layout, i64 8
  %19 = load i64, ptr %18, align 8
; call alloc::alloc::alloc_zeroed
  %20 = call ptr @_ZN5alloc5alloc12alloc_zeroed17h4bc7cbe5b4696546E(i64 %17, i64 %19)
  store ptr %20, ptr %raw_ptr, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %ptr5 = load ptr, ptr %raw_ptr, align 8
  %_35 = ptrtoint ptr %ptr5 to i64
  %21 = icmp eq i64 %_35, 0
  br i1 %21, label %bb13, label %bb14

bb13:                                             ; preds = %bb5
  store ptr null, ptr %self2, align 8
  store ptr null, ptr %self1, align 8
  %22 = load ptr, ptr @0, align 8
  %23 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store ptr %22, ptr %_0, align 8
  %24 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %23, ptr %24, align 8
  br label %bb6

bb14:                                             ; preds = %bb5
  br label %bb15

bb15:                                             ; preds = %bb14
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h832f283cc982e14dE"(ptr %ptr5) #18
  br label %bb17

bb17:                                             ; preds = %bb15
  store ptr %ptr5, ptr %self2, align 8
  %v = load ptr, ptr %self2, align 8
  store ptr %v, ptr %self1, align 8
  %v6 = load ptr, ptr %self1, align 8
  store ptr %v6, ptr %_10, align 8
  %ptr7 = load ptr, ptr %_10, align 8
  br label %bb18

bb18:                                             ; preds = %bb17
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h832f283cc982e14dE"(ptr %ptr7) #18
  br label %bb20

bb20:                                             ; preds = %bb18
  store ptr %ptr7, ptr %_0, align 8
  %25 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %size, ptr %25, align 8
  br label %bb6

bb9:                                              ; No predecessors!
  unreachable
}

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9d9d79b6eb87070bE"(ptr align 8 %self, i64 %elem_layout.0, i64 %elem_layout.1) unnamed_addr #3 {
start:
  %_3 = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::current_memory
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hec4b42d36bb990acE"(ptr sret([24 x i8]) align 8 %_3, ptr align 8 %self, i64 %elem_layout.0, i64 %elem_layout.1)
  %0 = getelementptr inbounds i8, ptr %_3, i64 8
  %1 = load i64, ptr %0, align 8
  %2 = icmp eq i64 %1, 0
  %_5 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_5, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_3, align 8
  %4 = getelementptr inbounds i8, ptr %_3, i64 8
  %layout.0 = load i64, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %layout.1 = load i64, ptr %5, align 8
  %_9 = getelementptr inbounds i8, ptr %self, i64 16
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2fef1ca4c75e67d9E"(ptr align 1 %_9, ptr %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void

bb5:                                              ; No predecessors!
  unreachable
}

; alloc::raw_vec::RawVecInner<A>::current_memory
; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hec4b42d36bb990acE"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self, i64 %0, i64 %1) unnamed_addr #2 {
start:
  %_17 = alloca [8 x i8], align 8
  %_13 = alloca [24 x i8], align 8
  %align = alloca [8 x i8], align 8
  %alloc_size = alloca [8 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  store i64 %0, ptr %elem_layout, align 8
  %2 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  %self1 = load i64, ptr %3, align 8
  %4 = icmp eq i64 %self1, 0
  br i1 %4, label %bb3, label %bb1

bb3:                                              ; preds = %bb2, %start
  %5 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 0, ptr %5, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_5 = load i64, ptr %self, align 8
  %6 = icmp eq i64 %_5, 0
  br i1 %6, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  br label %bb3

bb4:                                              ; preds = %bb1
  %rhs = load i64, ptr %self, align 8
  br label %bb6

bb5:                                              ; preds = %bb9, %bb3
  ret void

bb6:                                              ; preds = %bb4
; call core::num::<impl usize>::unchecked_mul::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_mul18precondition_check17h43bfff0cf69aa625E"(i64 %self1, i64 %rhs) #18
  %7 = mul nuw i64 %self1, %rhs
  store i64 %7, ptr %alloc_size, align 8
  %size = load i64, ptr %alloc_size, align 8
  %self2 = load i64, ptr %elem_layout, align 8
  store i64 %self2, ptr %_17, align 8
  %_18 = load i64, ptr %_17, align 8
  %_19 = icmp uge i64 %_18, 1
  %_20 = icmp ule i64 %_18, -9223372036854775808
  %_21 = and i1 %_19, %_20
  store i64 %_18, ptr %align, align 8
  br label %bb8

bb8:                                              ; preds = %bb6
  %8 = load i64, ptr %alloc_size, align 8
  %9 = load i64, ptr %align, align 8
; call core::alloc::layout::Layout::from_size_align_unchecked::precondition_check
  call void @_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h25dcbdd5b2157427E(i64 %8, i64 %9) #18
  br label %bb9

bb9:                                              ; preds = %bb8
  %_23 = load i64, ptr %align, align 8
  %layout.1 = load i64, ptr %alloc_size, align 8
  %10 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %10, align 8
  store ptr %self3, ptr %_13, align 8
  %11 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %_23, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  store i64 %layout.1, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_13, i64 24, i1 false)
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable
}

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h2a934e0bbac9e0d0E"(ptr sret([24 x i8]) align 8 %_0, i64 %capacity, i1 zeroext %0, i64 %1, i64 %2) unnamed_addr #3 personality ptr @__CxxFrameHandler3 {
start:
  %_38 = alloca [8 x i8], align 8
  %self3 = alloca [24 x i8], align 8
  %self2 = alloca [16 x i8], align 8
  %self = alloca [16 x i8], align 8
  %result = alloca [16 x i8], align 8
  %elem_layout1 = alloca [16 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %layout = alloca [16 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  %alloc = alloca [0 x i8], align 1
  %init = alloca [1 x i8], align 1
  %3 = zext i1 %0 to i8
  store i8 %3, ptr %init, align 1
  store i64 %1, ptr %elem_layout, align 8
  %4 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 %2, ptr %4, align 8
  %5 = load i64, ptr %elem_layout, align 8
  %6 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  %7 = load i64, ptr %6, align 8
  store i64 %5, ptr %elem_layout1, align 8
  %8 = getelementptr inbounds i8, ptr %elem_layout1, i64 8
  store i64 %7, ptr %8, align 8
; invoke core::alloc::layout::Layout::repeat
  invoke void @_ZN4core5alloc6layout6Layout6repeat17ha2ec3f0928c375cdE(ptr sret([24 x i8]) align 8 %self3, ptr align 8 %elem_layout1, i64 %capacity)
          to label %bb16 unwind label %funclet_bb15

bb15:                                             ; preds = %funclet_bb15
  br label %bb14

funclet_bb15:                                     ; preds = %bb4, %bb5, %start
  %cleanuppad = cleanuppad within none []
  br label %bb15

bb16:                                             ; preds = %start
  %9 = load i64, ptr %self3, align 8
  %10 = icmp eq i64 %9, 0
  %_33 = select i1 %10, i64 1, i64 0
  %11 = icmp eq i64 %_33, 0
  br i1 %11, label %bb18, label %bb17

bb18:                                             ; preds = %bb16
  %t.0 = load i64, ptr %self3, align 8
  %12 = getelementptr inbounds i8, ptr %self3, i64 8
  %t.1 = load i64, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %self3, i64 16
  %t = load i64, ptr %13, align 8
  store i64 %t.0, ptr %self2, align 8
  %14 = getelementptr inbounds i8, ptr %self2, i64 8
  store i64 %t.1, ptr %14, align 8
  %t.04 = load i64, ptr %self2, align 8
  %15 = getelementptr inbounds i8, ptr %self2, i64 8
  %t.15 = load i64, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %t.04, ptr %16, align 8
  %17 = getelementptr inbounds i8, ptr %16, i64 8
  store i64 %t.15, ptr %17, align 8
  store i64 0, ptr %_6, align 8
  %18 = getelementptr inbounds i8, ptr %_6, i64 8
  %layout.0 = load i64, ptr %18, align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  %layout.1 = load i64, ptr %19, align 8
  store i64 %layout.0, ptr %layout, align 8
  %20 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %layout.1, ptr %20, align 8
  %21 = icmp eq i64 %layout.1, 0
  br i1 %21, label %bb2, label %bb3

bb17:                                             ; preds = %bb16
  %22 = load i64, ptr @0, align 8
  %23 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store i64 %22, ptr %self2, align 8
  %24 = getelementptr inbounds i8, ptr %self2, i64 8
  store i64 %23, ptr %24, align 8
  %25 = load i64, ptr @0, align 8
  %26 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %27 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %25, ptr %27, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 8
  store i64 %26, ptr %28, align 8
  store i64 1, ptr %_0, align 8
  br label %bb13

bb2:                                              ; preds = %bb18
  %self6 = load i64, ptr %elem_layout, align 8
  store i64 %self6, ptr %_38, align 8
  %_39 = load i64, ptr %_38, align 8
  %_40 = icmp uge i64 %_39, 1
  %_41 = icmp ule i64 %_39, -9223372036854775808
  %_42 = and i1 %_40, %_41
  %ptr = getelementptr i8, ptr null, i64 %_39
  %29 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 0, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %29, i64 8
  store ptr %ptr, ptr %30, align 8
  store i64 0, ptr %_0, align 8
  br label %bb11

bb3:                                              ; preds = %bb18
  %31 = load i8, ptr %init, align 1
  %32 = trunc i8 %31 to i1
  %_17 = zext i1 %32 to i64
  %33 = icmp eq i64 %_17, 0
  br i1 %33, label %bb5, label %bb4

bb11:                                             ; preds = %bb13, %bb10, %bb2
  ret void

bb5:                                              ; preds = %bb3
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %34 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0d090cc3d24108e8E"(ptr align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb6 unwind label %funclet_bb15

bb4:                                              ; preds = %bb3
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %35 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h57e9d4b836e25a3eE"(ptr align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb7 unwind label %funclet_bb15

bb6:                                              ; preds = %bb5
  %36 = extractvalue { ptr, i64 } %34, 0
  %37 = extractvalue { ptr, i64 } %34, 1
  store ptr %36, ptr %result, align 8
  %38 = getelementptr inbounds i8, ptr %result, i64 8
  store i64 %37, ptr %38, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %39 = load ptr, ptr %result, align 8
  %40 = ptrtoint ptr %39 to i64
  %41 = icmp eq i64 %40, 0
  %_20 = select i1 %41, i64 1, i64 0
  %42 = icmp eq i64 %_20, 0
  br i1 %42, label %bb10, label %bb9

bb7:                                              ; preds = %bb4
  %43 = extractvalue { ptr, i64 } %35, 0
  %44 = extractvalue { ptr, i64 } %35, 1
  store ptr %43, ptr %result, align 8
  %45 = getelementptr inbounds i8, ptr %result, i64 8
  store i64 %44, ptr %45, align 8
  br label %bb8

bb10:                                             ; preds = %bb8
  %ptr.0 = load ptr, ptr %result, align 8
  %46 = getelementptr inbounds i8, ptr %result, i64 8
  %ptr.1 = load i64, ptr %46, align 8
  %47 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %capacity, ptr %47, align 8
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  store ptr %ptr.0, ptr %48, align 8
  store i64 0, ptr %_0, align 8
  br label %bb11

bb9:                                              ; preds = %bb8
  store i64 %layout.0, ptr %self, align 8
  %49 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %layout.1, ptr %49, align 8
  %_22.0 = load i64, ptr %self, align 8
  %50 = getelementptr inbounds i8, ptr %self, i64 8
  %_22.1 = load i64, ptr %50, align 8
  %51 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_22.0, ptr %51, align 8
  %52 = getelementptr inbounds i8, ptr %51, i64 8
  store i64 %_22.1, ptr %52, align 8
  store i64 1, ptr %_0, align 8
  br label %bb13

bb13:                                             ; preds = %bb17, %bb9
  br label %bb11

bb1:                                              ; No predecessors!
  unreachable

bb14:                                             ; preds = %bb15
  br label %bb12

bb12:                                             ; preds = %bb14
  cleanupret from %cleanuppad unwind to caller
}

; alloc::raw_vec::RawVecInner<A>::with_capacity_in
; Function Attrs: inlinehint uwtable
define { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h38327ec7fbf3e80cE"(i64 %capacity, i64 %elem_layout.0, i64 %elem_layout.1) unnamed_addr #2 {
start:
  %self = alloca [8 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  %this = alloca [16 x i8], align 8
  %_4 = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h2a934e0bbac9e0d0E"(ptr sret([24 x i8]) align 8 %_4, i64 %capacity, i1 zeroext false, i64 %elem_layout.0, i64 %elem_layout.1)
  %_5 = load i64, ptr %_4, align 8
  %0 = icmp eq i64 %_5, 0
  br i1 %0, label %bb4, label %bb3

bb4:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_4, i64 8
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load ptr, ptr %3, align 8
  store i64 %2, ptr %this, align 8
  %5 = getelementptr inbounds i8, ptr %this, i64 8
  store ptr %4, ptr %5, align 8
  store i64 %elem_layout.0, ptr %elem_layout, align 8
  %6 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 %elem_layout.1, ptr %6, align 8
  %7 = icmp eq i64 %elem_layout.1, 0
  br i1 %7, label %bb6, label %bb7

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds i8, ptr %_4, i64 8
  %err.0 = load i64, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  %err.1 = load i64, ptr %9, align 8
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17h60a3c2a863f8f917E(i64 %err.0, i64 %err.1) #14
  unreachable

bb6:                                              ; preds = %bb4
  store i64 -1, ptr %self, align 8
  br label %bb5

bb7:                                              ; preds = %bb4
  %10 = load i64, ptr %this, align 8
  store i64 %10, ptr %self, align 8
  br label %bb5

bb5:                                              ; preds = %bb7, %bb6
  %11 = load i64, ptr %self, align 8
  %_13 = sub i64 %11, 0
  %_8 = icmp ugt i64 %capacity, %_13
  %cond = xor i1 %_8, true
  br label %bb8

bb8:                                              ; preds = %bb5
; call core::hint::assert_unchecked::precondition_check
  call void @_ZN4core4hint16assert_unchecked18precondition_check17ha97ca847c4fb129dE(i1 zeroext %cond) #18
  br label %bb9

bb9:                                              ; preds = %bb8
  %_0.0 = load i64, ptr %this, align 8
  %12 = getelementptr inbounds i8, ptr %this, i64 8
  %_0.1 = load ptr, ptr %12, align 8
  %13 = insertvalue { i64, ptr } poison, i64 %_0.0, 0
  %14 = insertvalue { i64, ptr } %13, ptr %_0.1, 1
  ret { i64, ptr } %14

bb2:                                              ; No predecessors!
  unreachable
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h2fef1ca4c75e67d9E"(ptr align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #2 {
start:
  %_13 = alloca [8 x i8], align 8
  %layout1 = alloca [16 x i8], align 8
  %layout = alloca [16 x i8], align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  %_4 = load i64, ptr %3, align 8
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
  %5 = load i64, ptr %layout, align 8
  %6 = getelementptr inbounds i8, ptr %layout, i64 8
  %7 = load i64, ptr %6, align 8
  store i64 %5, ptr %layout1, align 8
  %8 = getelementptr inbounds i8, ptr %layout1, i64 8
  store i64 %7, ptr %8, align 8
  %self2 = load i64, ptr %layout, align 8
  store i64 %self2, ptr %_13, align 8
  %_14 = load i64, ptr %_13, align 8
  %_15 = icmp uge i64 %_14, 1
  %_16 = icmp ule i64 %_14, -9223372036854775808
  %_17 = and i1 %_15, %_16
  call void @__rust_dealloc(ptr %ptr, i64 %_4, i64 %_14) #18
  br label %bb2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h57e9d4b836e25a3eE"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #2 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hfbf50dfc484ffec6E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0d090cc3d24108e8E"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #2 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hfbf50dfc484ffec6E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h287d085e9da991ffE"(ptr align 8 %self) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he2ef27520c647697E"(ptr align 8 %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9d9d79b6eb87070bE"(ptr align 8 %self, i64 1, i64 1)
  ret void
}

; probe1::probe
; Function Attrs: uwtable
define void @_ZN6probe15probe17h9551e8ada9f42521E() unnamed_addr #3 {
start:
  %_3.i = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %_6 = alloca [16 x i8], align 8
  %_3 = alloca [48 x i8], align 8
  %res = alloca [24 x i8], align 8
  %_1 = alloca [24 x i8], align 8
  store ptr @alloc_53973d2fe29b4adba8bb7390b5678745, ptr %_3.i, align 8
  %0 = getelementptr inbounds i8, ptr %_3.i, i64 8
  store ptr @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h45ac80dc99fb386eE", ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_7, ptr align 8 %_3.i, i64 16, i1 false)
  %1 = getelementptr inbounds [1 x %"core::fmt::rt::Argument<'_>"], ptr %_6, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %_7, i64 16, i1 false)
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h2c59aec95dfbf70cE(ptr sret([48 x i8]) align 8 %_3, ptr align 8 @alloc_eab5d04767146d7d9b93b60d28ef530a, ptr align 8 %_6)
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17hfd7d8e37179a4f42E(ptr sret([24 x i8]) align 8 %res, ptr align 8 %_3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_1, ptr align 8 %res, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3f0e5de7dfe19e1eE"(ptr align 8 %_1)
  ret void
}

declare i32 @__CxxFrameHandler3(...) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17hc400f646e12e3d67E() unnamed_addr #6

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h346e6149e34565b2E(ptr align 1, i64) unnamed_addr #7

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hf0bd25a1cab5d3d4E(ptr align 8, ptr align 8) unnamed_addr #8

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h45ac80dc99fb386eE"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; core::alloc::layout::Layout::is_size_align_valid
; Function Attrs: uwtable
declare zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hc4025c8a018e161eE(i64, i64) unnamed_addr #3

; alloc::fmt::format::format_inner
; Function Attrs: uwtable
declare void @_ZN5alloc3fmt6format12format_inner17h4f3dc411215a94bcE(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #10

; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #11

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h60a3c2a863f8f917E(i64, i64) unnamed_addr #12

; Function Attrs: nounwind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #13

attributes #0 = { inlinehint nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #1 = { nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #2 = { inlinehint uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #3 = { uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #4 = { "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold minsize noinline noreturn nounwind optsize uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #7 = { cold noinline noreturn nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #8 = { cold noinline noreturn uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #11 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #12 = { cold minsize noreturn optsize uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #13 = { nounwind allockind("free") uwtable "alloc-family"="__rust_alloc" "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.83.0 (90b35a623 2024-11-26)"}
