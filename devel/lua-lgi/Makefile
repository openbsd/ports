# $OpenBSD: Makefile,v 1.20 2013/12/30 08:00:03 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	lua bindings to libraries using GObject-Introspection

GH_VER=		0.7.2
DISTNAME=	lgi-${GH_VER}
PKGNAME=	lua-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/pavouk/lgi

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		lang/lua

WANTLIB += ffi girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += pthread

LIB_DEPENDS=	devel/gobject-introspection

MASTER_SITES=	${HOMEPAGE}/archive/
DISTFILES=	${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}

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
