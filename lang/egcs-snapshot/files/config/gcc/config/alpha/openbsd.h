/* $OpenBSD: openbsd.h,v 1.5 1999/01/21 16:58:08 espie Exp $ */
/* vi:ts=8: 
 */

/* We settle for little endian for now */
#define TARGET_ENDIAN_DEFAULT 0

#include <alpha/alpha.h>

#define OBSD_NO_DYNAMIC_LIBRARIES
#include <openbsd.h>

/* run-time target specifications */
#define CPP_PREDEFINES "-D__unix__ -D__ANSI_COMPAT -Asystem(unix) \
-D__OpenBSD__ -D__alpha__ -D__alpha"


/* layout of source language data types
 * ------------------------------------ */
/* this must agree with <machine/ansi.h> */
#undef SIZE_TYPE
#define SIZE_TYPE "long unsigned int"

#undef PTRDIFF_TYPE
#define PTRDIFF_TYPE "long int"

#undef WCHAR_TYPE
#define WCHAR_TYPE "int"

#undef WCHAR_TYPE_SIZE
#define WCHAR_TYPE_SIZE 32


#undef PREFERRED_DEBUGGING_TYPE
#define PREFERRED_DEBUGGING_TYPE DBX_DEBUG

#define LOCAL_LABEL_PREFIX	"."

/* We don't have an init section yet */
#undef HAS_INIT_SECTION

/* collect2 support (Macros for initialization) 
 * -------------------------------------------- */

/* Don't tell collect2 we use COFF as we don't have (yet ?) a dynamic ld
   library with the proper functions to handle this -> collect2 will
   default to using nm. */
#undef OBJECT_FORMAT_COFF
#undef EXTENDED_COFF

/* taken from alpha/osf.h. This used to be common to all alpha
 * configurations, but elf has departed from it.
 * Check alpha/alpha.h, alpha/osf.h for it when egcs is upgraded.
 */
#ifndef ASM_FILE_START
#define ASM_FILE_START(FILE)					\
{								\
  alpha_write_verstamp (FILE);					\
  fprintf (FILE, "\t.set noreorder\n");				\
  fprintf (FILE, "\t.set volatile\n");                          \
  fprintf (FILE, "\t.set noat\n");				\
  if (TARGET_SUPPORT_ARCH)					\
    fprintf (FILE, "\t.arch %s\n",				\
             alpha_cpu == PROCESSOR_EV6 ? "ev6"			\
	     : (alpha_cpu == PROCESSOR_EV5			\
		? (TARGET_MAX ? "pca56" : TARGET_BWX ? "ev56" : "ev5") \
		: "ev4"));					\
								\
  ASM_OUTPUT_SOURCE_FILENAME (FILE, main_input_filename);	\
}
#endif


