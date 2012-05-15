# $OpenBSD: lua.port.mk,v 1.12 2012/05/15 18:14:44 jasper Exp $

CATEGORIES+=	lang/lua

# Major.Minor of current lua version provided by lang/lua
MODLUA_VERSION=	5.1

MODLUA_WANTLIB=	lua

MODLUA_RUN_DEPENDS=	lang/lua
MODLUA_LIB_DEPENDS=	${MODLUA_RUN_DEPENDS}
_MODLUA_BUILD_DEPENDS=	${MODLUA_RUN_DEPENDS}

# Where the example will be installed
MODLUA_EXAMPLEDIR=	${PREFIX}/share/examples/${FULLPKGNAME}/

# Where the docs will be installed
MODLUA_DOCDIR=	${PREFIX}/share/doc/${FULLPKGNAME}/

# Where the lua libraries will be installed to
MODLUA_LIBDIR=	${PREFIX}/lib/lua/${MODLUA_VERSION}/

# Where the lua modules will be installed to
MODLUA_DATADIR=	${PREFIX}/share/lua/${MODLUA_VERSION}/

MODLUA_RUN_DEP?=	Yes
MODLUA_BUILD_DEP?=	Yes

.if ${MODLUA_RUN_DEP:L} == yes
RUN_DEPENDS+=	${MODLUA_RUN_DEPENDS}
.endif

.if ${NO_BUILD:L} == "no" && ${MODLUA_BUILD_DEP:L} == "yes"
BUILD_DEPENDS+=	${_MODLUA_BUILD_DEPENDS}
.endif

.if !defined(SHARED_ONLY) || ${SHARED_ONLY:L} == "no"
PKG_ARCH=*
.endif

SUBST_VARS+=	MODLUA_VERSION
