/* $OpenBSD: openbsd.h,v 1.4 1999/02/16 17:20:57 espie Exp $ */

#include <sparc/sparc.h>

/* Get generic OpenBSD definitions.  */
#define OBSD_OLD_GAS
#include <openbsd.h>

/* run-time target specifications */
#define CPP_PREDEFINES "-D__unix__ -D__sparc__ -D__OpenBSD__ -Asystem(unix) -Asystem(OpenBSD) -Acpu(sparc) -Amachine(sparc)"

/* Layout of source language data types
   ------------------------------------ */
/* this must agree with <machine/ansi.h> */
#undef SIZE_TYPE
#define SIZE_TYPE "unsigned int"

#undef PTRDIFF_TYPE
#define PTRDIFF_TYPE "int"

#undef WCHAR_TYPE
#define WCHAR_TYPE "int"

#undef WCHAR_TYPE_SIZE
#define WCHAR_TYPE_SIZE 32

/* Specific options for DBX Output
   ------------------------------- */
/* This is BSD, so it wants DBX format.  */
#define DBX_DEBUGGING_INFO

/* This is the char to use for continuation */
#define DBX_CONTIN_CHAR '?'

/* Stack & calling: aggregate returns
   ---------------------------------- */
/* Don't default to pcc-struct-return, because gcc is the only compiler, and
   we want to retain compatibility with older gcc versions.  */
#undef DEFAULT_PCC_STRUCT_RETURN
#define DEFAULT_PCC_STRUCT_RETURN 0

/* Assembler format: exception region output 
   ----------------------------------------- */
/* all configurations that don't use elf must be explicit about not using
   dwarf unwind information. egcs doesn't try too hard to check internal
   configuration files...  */
#define DWARF2_UNWIND_INFO 0

/* Default sparc.h does already define ASM_OUTPUT_MI_THUNK */
