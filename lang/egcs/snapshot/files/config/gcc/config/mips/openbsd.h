/* GCC configuration for  OpenBSD Mips ABI32 */
/* $OpenBSD: openbsd.h,v 1.3 1999/02/06 21:49:02 espie Exp $ */

/* Default mips is little endian, unless otherwise specified */

#define OBJECT_FORMAT_ELF

#include <mips/mips.h>

/* Get generic openbsd definitions */
#define OBSD_HAS_DECLARE_FUNCTION_NAME
#define OBSD_HAS_DECLARE_OBJECT
#include <openbsd.h>

/* run-time target specifications */
#define CPP_PREDEFINES "-DMIPSEL -D_MIPSEL -DSYSTYPE_BSD \
-D__NO_LEADING_UNDERSCORES__ -D__GP_SUPPORT__ \
-D__unix__  -D__OpenBSD__ -D__mips__ \
-Asystem(unix) -Asystem(OpenBSD) -Amachine(mips)"

/* layout of source language data types
 * ------------------------------------ */
/* this must agree with <machine/ansi.h> */
#undef SIZE_TYPE
#define SIZE_TYPE "unsigned int"

#undef PTRDIFF_TYPE
#define PTRDIFF_TYPE "int"

#undef WCHAR_TYPE
#define WCHAR_TYPE "int"

#undef WCHAR_TYPE_SIZE
#define WCHAR_TYPE_SIZE 32

/* Controlling the compilation driver 
 * ---------------------------------- */

/* LINK_SPEC appropriate for OpenBSD.  Support for GCC options 
   -static, -assert, and -nostdlib. Dynamic loader control.
	XXX Why don't we offer -R support ? */
#undef LINK_SPEC
#define LINK_SPEC \
  "%{G*} %{EB} %{EL} %{mips1} %{mips2} %{mips3} \
   %{bestGnum} %{shared} %{non_shared} \
   %{call_shared} %{no_archive} %{exact_version} \
   %{!shared: %{!non_shared: %{!call_shared: -non_shared}}} \
   %{!dynamic-linker:-dynamic-linker /usr/libexec/ld.so} \
   %{!nostdlib:%{!r*:%{!e*:-e __start}}} -dc -dp \
   %{static:-Bstatic} %{!static:-Bdynamic} %{assert*}"

/* GAS needs to know this */
#define SUBTARGET_ASM_SPEC "%{fPIC:-KPIC} %|"

/* Some comment say that this is needed for ELF */
#define PREFERRED_DEBUGGING_TYPE DBX_DEBUG

/* Some comment say that we need to redefine this for ELF */
#define LOCAL_LABEL_PREFIX	"."

/* -G is incompatible with -KPIC which is the default, so only allow objects
   in the small data section if the user explicitly asks for it.  */
#undef MIPS_DEFAULT_GVALUE
#define MIPS_DEFAULT_GVALUE 0


/* Since gas and gld are standard on OpenBSD, we don't need these. */
#undef ASM_FINAL_SPEC
#undef STARTFILE_SPEC

/*
 A C statement to output something to the assembler file to switch to section
 NAME for object DECL which is either a FUNCTION_DECL, a VAR_DECL or
 NULL_TREE.  Some target formats do not support arbitrary sections.  Do not
 define this macro in such cases. mips.h doesn't define this, do it here.
*/
#define ASM_OUTPUT_SECTION_NAME(F, DECL, NAME, RELOC)                        \
do {                                                                         \
  extern FILE *asm_out_text_file;                                            \
  if ((DECL) && TREE_CODE (DECL) == FUNCTION_DECL)                           \
    fprintf (asm_out_text_file, "\t.section %s,\"ax\",@progbits\n", (NAME)); \
  else if ((DECL) && DECL_READONLY_SECTION (DECL, RELOC))                    \
    fprintf (F, "\t.section %s,\"a\",@progbits\n", (NAME));                  \
  else                                                                       \
    fprintf (F, "\t.section %s,\"aw\",@progbits\n", (NAME));                 \
} while (0)
