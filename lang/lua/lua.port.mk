# $OpenBSD: lua.port.mk,v 1.1 2008/06/11 05:00:01 landry Exp $

CATEGORIES+=	lang/lua

RUN_DEPENDS+=	::lang/lua

.if ${NO_BUILD:L} == "no"
BUILD_DEPENDS+=	::lang/lua
.endif
