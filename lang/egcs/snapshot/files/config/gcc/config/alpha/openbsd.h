/* $OpenBSD: openbsd.h,v 1.1 1999/01/10 02:50:05 espie Exp $ */
/* vi:ts=8: 
 */

/* We settle for little endian for now */
#define TARGET_ENDIAN_DEFAULT 0

#define TARGET_DEFAULT (MASK_GAS | MASK_FP | MASK_FPREGS)

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
#define SIZE_TYPE "unsigned long"

#undef PTRDIFF_TYPE
#define PTRDIFF_TYPE "long"

#undef WCHAR_TYPE
#define WCHAR_TYPE "int"

#undef WCHAR_TYPE_SIZE
#define WCHAR_TYPE_SIZE 32


#undef PREFERRED_DEBUGGING_TYPE
#define PREFERRED_DEBUGGING_TYPE DBX_DEBUG

#define LOCAL_LABEL_PREFIX	"."

/* We don't have an init section yet */
#undef HAS_INIT_SECTION
