	.file	"helloworld-labelall.bc"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Linfo_string:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.file	1 "helloworld.cpp"
	.file	2 "/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/x86_64-linux-gnu/c++/4.7/bits/c++config.h"
	.file	3 "/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/x86_64-linux-gnu/c++/4.7/bits/atomic_word.h"
	.file	4 "/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/c++/4.7/bits/ios_base.h"
	.file	5 "/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/c++/4.7/iostream"
	.file	6 "/usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/c++/4.7/debug/debug.h"
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
.Lfunc_begin0:
	.loc	5 75 0                  # /usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/c++/4.7/iostream:75:0
	.cfi_startproc
# BB#0:                                 # %entry
	.loc	5 75 0 prologue_end     # /usr/lib/gcc/x86_64-linux-gnu/4.7/../../../../include/c++/4.7/iostream:75:0
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Ltmp2:
.Ltmp3:
	.size	__cxx_global_var_init, .Ltmp3-__cxx_global_var_init
.Lfunc_end0:
	.cfi_endproc

	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin1:
	.loc	1 4 0                   # helloworld.cpp:4:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	.loc	1 7 0 prologue_end      # helloworld.cpp:7:0
.Ltmp9:
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
"LABEL:helloworld.bc:5:7":
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	xorl	%eax, %eax
	.loc	1 8 0                   # helloworld.cpp:8:0
	popq	%rbp
	retq
.Ltmp10:
.Ltmp11:
	.size	main, .Ltmp11-main
.Lfunc_end1:
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__I_a,@function
_GLOBAL__I_a:                           # @_GLOBAL__I_a
.Lfunc_begin2:
	.loc	1 9 0                   # helloworld.cpp:9:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	.loc	1 9 0 prologue_end      # helloworld.cpp:9:0
.Ltmp17:
	popq	%rbp
	jmp	__cxx_global_var_init   # TAILCALL
.Ltmp18:
.Ltmp19:
	.size	_GLOBAL__I_a, .Ltmp19-_GLOBAL__I_a
.Lfunc_end2:
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hello World"
	.size	.L.str, 12

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__I_a
	.section	.text.startup,"ax",@progbits
.Ldebug_end1:
	.text
.Ldebug_end2:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.5 (https://github.com/securesystemslab/multicompiler-clang.git 3319fd4e4f4ea468159ce5377f4c5a501b2eeeb7) (https://github.com/securesystemslab/multicompiler.git 1ca4edd441ed190ebe42becedf833ec50bf2fc65)"
.Linfo_string1:
	.asciz	"helloworld.cpp"
.Linfo_string2:
	.asciz	"/mnt/multicompiler/build"
.Linfo_string3:
	.asciz	"std"
.Linfo_string4:
	.asciz	"__ioinit"
.Linfo_string5:
	.asciz	"ios_base"
.Linfo_string6:
	.asciz	"_S_refcount"
.Linfo_string7:
	.asciz	"int"
.Linfo_string8:
	.asciz	"_Atomic_word"
.Linfo_string9:
	.asciz	"_S_synced_with_stdio"
.Linfo_string10:
	.asciz	"bool"
.Linfo_string11:
	.asciz	"Init"
.Linfo_string12:
	.asciz	"~Init"
.Linfo_string13:
	.asciz	"_ZStL8__ioinit"
.Linfo_string14:
	.asciz	"__cxx_global_var_init"
.Linfo_string15:
	.asciz	"main"
.Linfo_string16:
	.asciz	"_GLOBAL__I_a"
.Linfo_string17:
	.asciz	"__gnu_debug"
.Linfo_string18:
	.asciz	"__debug"
.Linfo_string19:
	.byte	0
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	279                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x110 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	4                       # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.quad	0                       # DW_AT_low_pc
	.byte	2                       # Abbrev [2] 0x26:0x66 DW_TAG_namespace
	.long	.Linfo_string3          # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	171                     # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x2d:0xf DW_TAG_variable
	.long	.Linfo_string4          # DW_AT_name
	.long	65                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
                                        # DW_AT_declaration
	.long	.Linfo_string13         # DW_AT_MIPS_linkage_name
	.byte	4                       # Abbrev [4] 0x3c:0x48 DW_TAG_class_type
	.long	.Linfo_string5          # DW_AT_name
                                        # DW_AT_declaration
	.byte	5                       # Abbrev [5] 0x41:0x42 DW_TAG_class_type
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.short	535                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x4a:0xd DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	140                     # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.short	543                     # DW_AT_decl_line
                                        # DW_AT_external
                                        # DW_AT_declaration
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	6                       # Abbrev [6] 0x57:0xd DW_TAG_member
	.long	.Linfo_string9          # DW_AT_name
	.long	158                     # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.short	544                     # DW_AT_decl_line
                                        # DW_AT_external
                                        # DW_AT_declaration
	.byte	3                       # DW_AT_accessibility
                                        # DW_ACCESS_private
	.byte	7                       # Abbrev [7] 0x64:0xf DW_TAG_subprogram
	.long	.Linfo_string11         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x6d:0x5 DW_TAG_formal_parameter
	.long	165                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x73:0xf DW_TAG_subprogram
	.long	.Linfo_string12         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.short	540                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x7c:0x5 DW_TAG_formal_parameter
	.long	165                     # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x84:0x7 DW_TAG_namespace
	.long	.Linfo_string18         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x8c:0xb DW_TAG_typedef
	.long	151                     # DW_AT_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x97:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	11                      # Abbrev [11] 0x9e:0x7 DW_TAG_base_type
	.long	.Linfo_string10         # DW_AT_name
	.byte	2                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	12                      # Abbrev [12] 0xa5:0x5 DW_TAG_pointer_type
	.long	65                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0xaa:0xf DW_TAG_variable
	.long	45                      # DW_AT_specification
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	_ZStL8__ioinit
	.byte	14                      # Abbrev [14] 0xb9:0x1a DW_TAG_subprogram
	.long	.Linfo_string14         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.quad	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	15                      # Abbrev [15] 0xd3:0x1e DW_TAG_subprogram
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	3                       # DW_AT_decl_line
	.long	151                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.quad	.Lfunc_end1             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0xf1:0x1a DW_TAG_subprogram
	.long	.Linfo_string16         # DW_AT_MIPS_linkage_name
	.byte	1                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
                                        # DW_AT_artificial
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.quad	.Lfunc_end2             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	2                       # Abbrev [2] 0x10b:0xf DW_TAG_namespace
	.long	.Linfo_string17         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.byte	17                      # Abbrev [17] 0x112:0x7 DW_TAG_imported_module
	.byte	6                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	132                     # DW_AT_import
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.L.debug_info_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	57                      # DW_TAG_namespace
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\207@"                 # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	57                      # DW_TAG_namespace
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	71                      # DW_AT_specification
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	"\347\177"              # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.ascii	"\207@"                 # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	58                      # DW_TAG_imported_module
	.byte	0                       # DW_CHILDREN_no
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	24                      # DW_AT_import
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_aranges,"",@progbits
	.long	76                      # Length of ARange Set
	.short	2                       # DWARF Arange version number
	.long	.L.debug_info_begin0    # Offset Into Debug Info Section
	.byte	8                       # Address Size (in bytes)
	.byte	0                       # Segment Size (in bytes)
	.zero	4,255
	.quad	_ZStL8__ioinit
	.quad	1
	.quad	.Lfunc_begin0
.Lset0 = .Ldebug_end1-.Lfunc_begin0
	.quad	.Lset0
	.quad	.Lfunc_begin1
.Lset1 = .Ldebug_end2-.Lfunc_begin1
	.quad	.Lset1
	.quad	0                       # ARange terminator
	.quad	0
	.section	.debug_ranges,"",@progbits
.Lgnu_ranges0:
	.section	.debug_pubnames,"",@progbits
.Lset2 = .Lpubnames_end0-.Lpubnames_begin0 # Length of Public Names Info
	.long	.Lset2
.Lpubnames_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset3 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset3
	.long	241                     # DIE offset
	.byte	0                       # External Name
	.long	132                     # DIE offset
	.asciz	"std::__debug"          # External Name
	.long	211                     # DIE offset
	.asciz	"main"                  # External Name
	.long	38                      # DIE offset
	.asciz	"std"                   # External Name
	.long	185                     # DIE offset
	.asciz	"__cxx_global_var_init" # External Name
	.long	267                     # DIE offset
	.asciz	"__gnu_debug"           # External Name
	.long	0                       # End Mark
.Lpubnames_end0:
	.section	.debug_pubtypes,"",@progbits
.Lset4 = .Lpubtypes_end0-.Lpubtypes_begin0 # Length of Public Types Info
	.long	.Lset4
.Lpubtypes_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset5 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset5
	.long	140                     # DIE offset
	.asciz	"_Atomic_word"          # External Name
	.long	151                     # DIE offset
	.asciz	"int"                   # External Name
	.long	158                     # DIE offset
	.asciz	"bool"                  # External Name
	.long	0                       # End Mark
.Lpubtypes_end0:

	.ident	"clang version 3.5 (https://github.com/securesystemslab/multicompiler-clang.git 3319fd4e4f4ea468159ce5377f4c5a501b2eeeb7) (https://github.com/securesystemslab/multicompiler.git 1ca4edd441ed190ebe42becedf833ec50bf2fc65)"
	.section	".note.GNU-stack","",@progbits
