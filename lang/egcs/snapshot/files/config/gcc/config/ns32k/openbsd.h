/* $OpenBSD: openbsd.h,v 1.3 1999/02/16 17:20:56 espie Exp $ */

#include <ns32k/ns32k.h>

/* XXX broken: ns32k should have symbolic defines */
/* Compile for the floating point unit & 32532 by default;
   Don't assume SB is zero;
   Don't use bitfield instructions; */

#define TARGET_DEFAULT (1 + 24 + 32 + 64)

/* 32-bit alignment for efficiency */
#undef POINTER_BOUNDARY
#define POINTER_BOUNDARY 32

/* 32-bit alignment for efficiency */
#undef FUNCTION_BOUNDARY
#define FUNCTION_BOUNDARY 32

/* 32532 spec says it can handle any alignment.  Rumor from tm-ns32k.h
   tells this might not be actually true (but it's for 32032, perhaps
   National has fixed the bug for 32532).  You might have to change this
   if the bug still exists. */

#undef STRICT_ALIGNMENT
#define STRICT_ALIGNMENT 0
/* Use pc relative addressing whenever possible,
   it's more efficient than absolute (ns32k.c)
   You have to fix a bug in gas 1.38.1 to make this work with gas,
   patch available from jkp@cs.hut.fi.
   (OpenBSD's gas version has this patch already applied) */
#define PC_RELATIVE

/* Operand of bsr or jsr should be just the address.  */
#define CALL_MEMREF_IMPLICIT

/* movd insns may have floating point constant operands.  */
#define MOVD_FLOAT_OK

/* Get generic OpenBSD definitions. */
#include <openbsd.h>

/* run-time target specifications */
#define CPP_PREDEFINES "-D__unix__ -D__ns32k__ -D__ns32000__ -D__ns32532__ -D__OpenBSD__ -D__pc532__ -Asystem(unix) -Asystem(OpenBSD) -Acpu(ns32k) -Amachine(ns32k)"

/* Layout of source language data types
   ------------------------------------ */
/* this must agree with <machine/ansi.h> */
#undef SIZE_TYPE
#define SIZE_TYPE "unsigned int"

#undef PTRDIFF_TYPE
#define PTRDIFF_TYPE "int"

#undef WCHAR_TYPE
#define WCHAR_TYPE	"int"

#undef WCHAR_TYPE_SIZE
#define WCHAR_TYPE_SIZE	32

/* Specific options for DBX Output
   ------------------------------- */
/* This is BSD, so it wants DBX format.  */
#define DBX_DEBUGGING_INFO

/* Do not break .stabs pseudos into continuations.  */
#define DBX_CONTIN_LENGTH 0

/* This is the char to use for continuation (in case we need to turn
   continuation back on).  */
#define DBX_CONTIN_CHAR '?'

/* Stack & calling: aggregate returns
   ---------------------------------- */
/* Don't default to pcc-struct-return, because gcc is the only compiler, and
   we want to retain compatibility with older gcc versions.  */
#undef PCC_STATIC_STRUCT_RETURN
#define DEFAULT_PCC_STRUCT_RETURN 0
