/* $OpenBSD: stdbool.h,v 1.1 2002/01/01 09:32:27 espie Exp $ */
#ifndef _STDBOOL_H
#define _STDBOOL_H

/* gcc now includes _Bool has a built-in integer type */
#ifndef __cplusplus

#define bool	_Bool
#define true	1
#define false	0

#else

/* and we want g++ to recognize it as well... but carefully */
#define _Bool	bool
#define bool	bool
#define false	false
#define true	true

#endif

/* ANSI conformance */
#define __bool_true_false_are_defined	1

#endif
