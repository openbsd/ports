# $OpenBSD: Makefile,v 1.4 2020/02/03 22:42:36 fcambus Exp $

COMMENT =	Lua bindings to libpsl

V =		0.3
DISTNAME =	lua-psl-${V}
REVISION =	0

GH_ACCOUNT =	daurnimator
GH_PROJECT =	lua-psl
GH_TAGNAME =	v${V}

CATEGORIES =	net

# MIT
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =	net/libpsl

MODULES =	lang/lua
WANTLIB +=	${MODLUA_WANTLIB} psl

FLAVORS =	lua52 lua53
FLAVOR ?=

CFLAGS +=	`pkg-config --cflags ${MODLUA_DEP}` -I${LOCALBASE}/include
LINK =		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

NO_TEST =	Yes

do-build:
	cd ${WRKDIST}/psl && ${LINK} psl.so psl.c ${MODLUA_LIB} -lpsl

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/psl/psl.so ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/index.md ${MODLUA_DOCDIR}

.include <bsd.port.mk>
