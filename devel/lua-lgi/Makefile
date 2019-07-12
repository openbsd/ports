# $OpenBSD: Makefile,v 1.34 2019/07/12 20:44:41 sthen Exp $

COMMENT=	lua bindings to libraries using GObject-Introspection

GH_ACCOUNT=	pavouk
GH_PROJECT=	lgi
GH_TAGNAME=	0.9.1

PKGNAME=	lua-${DISTNAME}
REVISION=	1
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

WANTLIB += ffi girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0 intl
WANTLIB += pthread

LIB_DEPENDS=	devel/gobject-introspection

FLAVORS=	lua52 lua53
FLAVOR?=

USE_GMAKE=	Yes
MAKE_ENV=	MAKE=${MAKE_PROGRAM} LUA_CFLAGS="-I${MODLUA_INCL_DIR}" \
		LUA_LIBDIR="${MODLUA_LIBDIR}" LUA_SHAREDIR="${MODLUA_DATADIR}"

TEST_TARGET=	check
TEST_IS_INTERACTIVE=x11

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lgi/Makefile \
		${WRKSRC}/lgi/core.c \
		${WRKSRC}/lgi/core.lua

post-install:
	${INSTALL_DATA_DIR} ${MODLUA_EXAMPLEDIR}
	cd ${WRKSRC}/samples/ && umask 022 && \
		pax -rw . ${MODLUA_EXAMPLEDIR}

pre-test:
	${SUBST_CMD} ${WRKSRC}/tests/Makefile

.include <bsd.port.mk>
