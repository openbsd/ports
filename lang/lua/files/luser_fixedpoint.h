/*	$OpenBSD: luser_fixedpoint.h,v 1.1 2006/01/21 01:29:40 jolan Exp $	*/

#define LUA_NUMBER              int
#define LUA_NUMBER_SCAN         "%d"
#define LUA_NUMBER_FMT          "%d"
#define lua_str2number(s,p)     ((int) strtol((s), (p), 10))
