# $OpenBSD: Makefile,v 1.2 2019/07/12 20:43:49 sthen Exp $

COMMENT =	Lua bindings for the iconv library

V =		7
DISTNAME =	lua-iconv-${V}

GH_ACCOUNT =	ittner
GH_PROJECT =	lua-iconv
GH_TAGNAME =	lua-iconv-${V}

CATEGORIES =	converters

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =	converters/libiconv

MODULES =	lang/lua
TEST_DEPENDS +=	${BASE_PKGPATH}
WANTLIB +=	${MODLUA_WANTLIB} iconv

FLAVORS =	lua52 lua53
FLAVOR ?=

CFLAGS +=	`pkg-config --cflags ${MODLUA_DEP}` -I${LOCALBASE}/include
LINK =		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST} && ${LINK} iconv.so luaiconv.c ${MODLUA_LIB} -liconv

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/iconv.so ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${MODLUA_DOCDIR}

do-test:
	cd ${WRKDIST} && ${MODLUA_BIN} test_iconv.lua

.include <bsd.port.mk>
