# $OpenBSD: lua.port.mk,v 1.5 2010/09/09 17:32:36 jasper Exp $

CATEGORIES+=	lang/lua

# Major.Minor of current lua version provided by lang/lua
MODLUA_VERSION=	5.1

# Where the lua libraries will be installed to
MODLUA_LIBDIR=	${PREFIX}/lib/lua/${MODLUA_VERSION}/

# Where the lua modules will be installed to
MODLUA_DATADIR=	${PREFIX}/share/lua/${MODLUA_VERSION}/

RUN_DEPENDS+=	::lang/lua

.if ${NO_BUILD:L} == "no"
BUILD_DEPENDS+=	::lang/lua
.endif

.if !defined(SHARED_ONLY) || ${SHARED_ONLY:L} == "no"
PKG_ARCH=*
.endif
