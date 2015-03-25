# $OpenBSD: Makefile,v 1.24 2015/03/25 09:34:43 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	lua bindings to libraries using GObject-Introspection

GH_ACCOUNT=	pavouk
GH_PROJECT=	lgi
GH_TAGNAME=	0.9.0
GH_COMMIT=	0f203a0cd0a5cfa1c034fdd267ca3307fae78494

DISTNAME=	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME=	lua-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/pavouk/lgi

MAINTAINER=	Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	converters/libiconv \
		devel/gettext \
		lang/lua

WANTLIB += ffi girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += pthread

LIB_DEPENDS=	devel/gobject-introspection

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
