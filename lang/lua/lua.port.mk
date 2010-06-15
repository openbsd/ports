# $OpenBSD: lua.port.mk,v 1.2 2010/06/15 21:17:46 jasper Exp $

CATEGORIES+=	lang/lua

# Major.Minor of current lua version provided by lang/lua
LUA_VERSION=	5.1

# Where the lua libraries will be installed to
LUA_LIBDIR=	${PREFIX}/lib/lua/${LUA_VERSION}/

# Where the lua modules will be installed to
LUA_DATADIR=	${PREFIX}/share/lua/${LUA_VERSION}/

RUN_DEPENDS+=	::lang/lua

.if ${NO_BUILD:L} == "no"
BUILD_DEPENDS+=	::lang/lua
.endif
