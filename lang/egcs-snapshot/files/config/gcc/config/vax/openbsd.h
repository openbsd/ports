/* $OpenBSD: openbsd.h,v 1.1 1999/02/02 01:17:19 espie Exp $ */
#include <vax/vax.h>
#include <openbsd.h>

#define CPP_PREDEFINES "-Dunix -Dvax -D__OpenBSD__ -Asystem(unix) -Asystem(OpenBSD) -Acpu(vax) -Amachine(vax)"


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
