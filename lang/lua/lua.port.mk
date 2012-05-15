# $OpenBSD: lua.port.mk,v 1.10 2012/05/15 15:11:06 jasper Exp $

CATEGORIES+=	lang/lua

# Major.Minor of current lua version provided by lang/lua
MODLUA_VERSION=	5.1

# Where the example will be installed
MODLUA_EXAMPLEDIR=	${PREFIX}/share/examples/${FULLPKGNAME}/

# Where the docs will be installed
MODLUA_DOCDIR=	${PREFIX}/share/doc/${FULLPKGNAME}/

# Where the lua libraries will be installed to
MODLUA_LIBDIR=	${PREFIX}/lib/lua/${MODLUA_VERSION}/

# Where the lua modules will be installed to
MODLUA_DATADIR=	${PREFIX}/share/lua/${MODLUA_VERSION}/

MODLUA_RUNDEP?=	Yes
.if ${MODLUA_RUNDEP:L} == yes
RUN_DEPENDS+=	lang/lua
.endif

.if ${NO_BUILD:L} == "no"
BUILD_DEPENDS+=	lang/lua
.endif

.if !defined(SHARED_ONLY) || ${SHARED_ONLY:L} == "no"
PKG_ARCH=*
.endif

SUBST_VARS+=	MODLUA_VERSION
