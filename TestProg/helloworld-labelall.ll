; ModuleID = 'helloworld.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { [12 x i8], %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { [12 x i8], [4 x i8] }
%"class.std::num_get" = type { [12 x i8], [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !44, !label.all !45
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1, !dbg !44, !label.all !45
  ret void, !dbg !44, !label.all !45
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0)), !dbg !46, !label.all !45
  ret i32 0, !dbg !48, !label.all !45
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

define internal void @_GLOBAL__I_a() section ".text.startup" {
entry:
  call void @__cxx_global_var_init(), !dbg !49, !label.all !45
  ret void, !dbg !49, !label.all !45
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42}
!llvm.ident = !{!43}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5 (https://github.com/securesystemslab/multicompiler-clang.git 3319fd4e4f4ea468159ce5377f4c5a501b2eeeb7) (https://github.com/securesystemslab/multicompiler.git 1ca4edd441ed190ebe42becedf833ec50bf2fc65)", i1 false, metadata !"", i32 0, metadata !2, metadata !3, metadata !22, metadata !34, metadata !36, metadata !""} ; [ DW_TAG_compile_unit ] [/mnt/multicompiler/build/helloworld.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"helloworld.cpp", metadata !"/mnt/multicompiler/build"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !8}
!4 = metadata !{i32 786434, metadata !5, metadata !6, metadata !"ios_base", i32 201, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt8ios_base"} ; [ DW_TAG_class_type ] [ios_base] [line 201, size 0, align 0, offset 0] [decl] [from ]
!5 = metadata !{metadata !"/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/c++/4.7/bits/ios_base.h", metadata !"/mnt/multicompiler/build"}
!6 = metadata !{i32 786489, metadata !7, null, metadata !"std", i32 171} ; [ DW_TAG_namespace ] [std] [line 171]
!7 = metadata !{metadata !"/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/x86_64-linux-gnu/c++/4.7/bits/c++config.h", metadata !"/mnt/multicompiler/build"}
!8 = metadata !{i32 786434, metadata !5, metadata !"_ZTSSt8ios_base", metadata !"Init", i32 535, i64 8, i64 8, i32 0, i32 0, null, metadata !9, i32 0, null, null, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_class_type ] [Init] [line 535, size 8, align 8, offset 0] [def] [from ]
!9 = metadata !{metadata !10, metadata !14, metadata !16, metadata !21}
!10 = metadata !{i32 786445, metadata !5, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_refcount", i32 543, i64 0, i64 0, i64 0, i32 4097, metadata !11, null} ; [ DW_TAG_member ] [_S_refcount] [line 543, size 0, align 0, offset 0] [private] [static] [from _Atomic_word]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"_Atomic_word", i32 32, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [_Atomic_word] [line 32, size 0, align 0, offset 0] [from int]
!12 = metadata !{metadata !"/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/x86_64-linux-gnu/c++/4.7/bits/atomic_word.h", metadata !"/mnt/multicompiler/build"}
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786445, metadata !5, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_synced_with_stdio", i32 544, i64 0, i64 0, i64 0, i32 4097, metadata !15, null} ; [ DW_TAG_member ] [_S_synced_with_stdio] [line 544, size 0, align 0, offset 0] [private] [static] [from bool]
!15 = metadata !{i32 786468, null, null, metadata !"bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!16 = metadata !{i32 786478, metadata !5, metadata !"_ZTSNSt8ios_base4InitE", metadata !"Init", metadata !"Init", metadata !"", i32 539, metadata !17, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 539} ; [ DW_TAG_subprogram ] [line 539] [Init]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 1088, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [artificial] [from _ZTSNSt8ios_base4InitE]
!20 = metadata !{i32 786468}
!21 = metadata !{i32 786478, metadata !5, metadata !"_ZTSNSt8ios_base4InitE", metadata !"~Init", metadata !"~Init", metadata !"", i32 540, metadata !17, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 540} ; [ DW_TAG_subprogram ] [line 540] [~Init]
!22 = metadata !{metadata !23, metadata !28, metadata !32}
!23 = metadata !{i32 786478, metadata !24, metadata !25, metadata !"__cxx_global_var_init", metadata !"__cxx_global_var_init", metadata !"", i32 75, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__cxx_global_var_init, null, null, metadata !2, i32 75} ; [ DW_TAG_subprogram ] [line 75] [local] [def] [__cxx_global_var_init]
!24 = metadata !{metadata !"/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/c++/4.7/iostream", metadata !"/mnt/multicompiler/build"}
!25 = metadata !{i32 786473, metadata !24}        ; [ DW_TAG_file_type ] [/mnt/multicompiler/build//usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/c++/4.7/iostream]
!26 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{null}
!28 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"main", metadata !"main", metadata !"", i32 3, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 3] [def] [scope 4] [main]
!29 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/mnt/multicompiler/build/helloworld.cpp]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !13}
!32 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"", metadata !"", metadata !"_GLOBAL__I_a", i32 7, metadata !33, i1 true, i1 true, i32 0, i32 0, null, i32 64, i1 false, void ()* @_GLOBAL__I_a, null, null, metadata !2, i32 7} ; [ DW_TAG_subprogram ] [line 7] [local] [def]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786484, i32 0, metadata !6, metadata !"__ioinit", metadata !"__ioinit", metadata !"_ZStL8__ioinit", metadata !25, i32 75, metadata !8, i32 1, i32 1, %"class.std::ios_base::Init"* @_ZStL8__ioinit, null} ; [ DW_TAG_variable ] [__ioinit] [line 75] [local] [def]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786490, metadata !38, metadata !40, i32 57} ; [ DW_TAG_imported_module ]
!38 = metadata !{i32 786489, metadata !39, null, metadata !"__gnu_debug", i32 55} ; [ DW_TAG_namespace ] [__gnu_debug] [line 55]
!39 = metadata !{metadata !"/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/c++/4.7/debug/debug.h", metadata !"/mnt/multicompiler/build"}
!40 = metadata !{i32 786489, metadata !39, metadata !6, metadata !"__debug", i32 49} ; [ DW_TAG_namespace ] [__debug] [line 49]
!41 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!42 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!43 = metadata !{metadata !"clang version 3.5 (https://github.com/securesystemslab/multicompiler-clang.git 3319fd4e4f4ea468159ce5377f4c5a501b2eeeb7) (https://github.com/securesystemslab/multicompiler.git 1ca4edd441ed190ebe42becedf833ec50bf2fc65)"}
!44 = metadata !{i32 75, i32 0, metadata !23, null}
!45 = metadata !{metadata !"TEST WORKS!!"}
!46 = metadata !{i32 5, i32 0, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !28} ; [ DW_TAG_lexical_block ] [/mnt/multicompiler/build/helloworld.cpp]
!48 = metadata !{i32 6, i32 0, metadata !47, null}
!49 = metadata !{i32 7, i32 0, metadata !32, null}
