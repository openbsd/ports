/* $OpenBSD: openbsd.h,v 1.3 1999/02/16 17:20:57 espie Exp $ */
#include <vax/vax.h>
#define OBSD_OLD_GAS 
#include <openbsd.h>

#define CPP_PREDEFINES "-D__unix__ -D__vax__ -D__OpenBSD__ -Asystem(unix) -Asystem(OpenBSD) -Acpu(vax) -Amachine(vax)"

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
