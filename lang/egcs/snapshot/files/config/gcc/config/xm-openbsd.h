/* `generic' xm-openbsd.h.
   This file gets included by all architectures. It holds stuff
	that ought to be defined when hosting a compiler on an OpenBSD
	machine, independently of the architecture. It's included by
	${cpu_type}/xm-openbsd.h, not included directly.
 */

/* OpenBSD is trying to be POSIX-compliant, to the point of fixing
   problems that may occur with gcc's interpretation.
 */
#undef POSIX
#define POSIX

/* Ensure we get gnu C's defaults */
#ifdef __GNUC__
#define alloca __builtin_alloca
#endif

