/* $OpenBSD: openbsd.h,v 1.2 1999/01/10 02:50:06 espie Exp $ */
/* vi:ts=8: 
 */

#define TARGET_DEFAULT (MASK_BITFIELD | MASK_68881 | MASK_68020)

#include <m68k/m68k.h>

/* Get generic OpenBSD definitions.  */
#define OBSD_OLD_GAS
#include <openbsd.h>

/* Define __HAVE_68881__ in preprocessor, unless -msoft-float is specified.
   This will control the use of inline 68881 insns in certain macros.  */
#undef CPP_SPEC
#define CPP_SPEC "%{!msoft-float:-D__HAVE_68881__ -D__HAVE_FPU__} %{posix:-D_POSIX_SOURCE} %{pthread:-D_POSIX_THREADS}"

/* run-time target specifications */
#define CPP_PREDEFINES "-D__unix__ -D__m68k__ -D__mc68000__ -D__mc68020__ -D__OpenBSD__ -Asystem(unix) -Asystem(OpenBSD) -Acpu(m68k) -Amachine(m68k)"

/* TODO: activate subtarget types when gas is updated 
#define ASM_SPEC "%| %{m68030} %{m68040} %{m68060} %{fpic:-k} %{fPIC:-k -K}"
 */


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

/* Every structure or union's size must be a multiple of 2 bytes.  */
#define STRUCTURE_SIZE_BOUNDARY 16

/* Specific options for DBX Output
 * ------------------------------- */
/* This is BSD, so it wants DBX format.  */
#define DBX_DEBUGGING_INFO

/* Do not break .stabs pseudos into continuations.  */
#define DBX_CONTIN_LENGTH 0

/* This is the char to use for continuation (in case we need to turn
   continuation back on).  */
#define DBX_CONTIN_CHAR '?'

/* Don't default to pcc-struct-return, because gcc is the only compiler, and
   we want to retain compatibility with older gcc versions.  */
#define DEFAULT_PCC_STRUCT_RETURN 0

/* aout-m68k-openbsd does not handle dwarf2 unwinds and initialization info
   correctly */
#define DWARF2_UNWIND_INFO 0

/* taken from linux.h. Processor dependent optimized code to handle C++
 * multiple inheritance vtable lookup
 */
/* Output code to add DELTA to the first argument, and then jump to FUNCTION.
   Used for C++ multiple inheritance.  */
#define ASM_OUTPUT_MI_THUNK(FILE, THUNK_FNDECL, DELTA, FUNCTION)	\
do {									\
  if (DELTA > 0 && DELTA <= 8)						\
    asm_fprintf (FILE, "\taddq.l %I%d,4(%Rsp)\n", DELTA);		\
  else if (DELTA < 0 && DELTA >= -8)					\
    asm_fprintf (FILE, "\tsubq.l %I%d,4(%Rsp)\n", -DELTA);		\
  else									\
    asm_fprintf (FILE, "\tadd.l %I%d,4(%Rsp)\n", DELTA);		\
									\
  if (flag_pic)								\
    {									\
      fprintf (FILE, "\tbra.l ");					\
      assemble_name (FILE, XSTR (XEXP (DECL_RTL (FUNCTION), 0), 0));	\
      fprintf (FILE, "@PLTPC\n");					\
    }									\
  else									\
    {									\
      fprintf (FILE, "\tjmp ");						\
      assemble_name (FILE, XSTR (XEXP (DECL_RTL (FUNCTION), 0), 0));	\
      fprintf (FILE, "\n");						\
    }									\
} while (0)
