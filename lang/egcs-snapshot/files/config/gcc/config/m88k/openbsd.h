/* $OpenBSD: openbsd.h,v 1.2 1999/02/16 17:20:56 espie Exp $ */

/* a.out with DBX */
#define DBX_DEBUGGING_INFO
#define DEFAULT_GDB_EXTENSIONS 0

#include <aoutos.h>
#include <m88k/m88k.h>
#include <openbsd.h>

/* Identify the compiler.  */
#undef  VERSION_INFO1
#define VERSION_INFO1 "Motorola m88k, "

/* Macros to be automatically defined.  */
#define CPP_PREDEFINES \
    "-D__m88k__ -D__unix__ -D__OpenBSD__ -D__CLASSIFY_TYPE__=2 -Asystem(unix) -Asystem(OpenBSD) -Acpu(m88k) -Amachine(m88k)"

/* If -m88000 is in effect, add -Dmc88000; similarly for -m88100 and -m88110.
   However, reproduce the effect of -Dmc88100 previously in CPP_PREDEFINES.
   Here, the CPU_DEFAULT is assumed to be -m88100.  */
#undef	CPP_SPEC
#define	CPP_SPEC "%{m88000:-D__mc88000__} \
		  %{!m88000:%{m88100:%{m88110:-D__mc88000__}}} \
		  %{!m88000:%{!m88100:%{m88110:-D__mc88110__}}} \
		  %{!m88000:%{!m88110:%{!ansi:%{traditional:-Dmc88100}} \
		  -D__mc88100__ -D__mc88100}} %{posix:-D_POSIX_SOURCE} \
		  %{pthread:-D_POSIX_THREADS}"

/* For the Omron Luna/88k, a float function returns a double in traditional
   mode (and a float in ansi mode).  */
#undef TRADITIONAL_RETURN_FLOAT

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

/* Every structure or union's size must be a multiple of 2 bytes.  */
#undef STRUCTURE_SIZE_BOUNDARY
#define STRUCTURE_SIZE_BOUNDARY 16 

/* Stack & calling: aggregate returns
   ---------------------------------- */
/* Don't default to pcc-struct-return, because gcc is the only compiler, and
   we want to retain compatibility with older gcc versions.  */
#define DEFAULT_PCC_STRUCT_RETURN 0

#undef SET_ASM_OP
#define SET_ASM_OP	".def"   

