# $OpenBSD: Makefile,v 1.8 2019/07/12 21:02:15 sthen Exp $

COMMENT=	MessagePack implementation and bindings for Lua

DISTNAME=	lua-cmsgpack-0.3.0
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	https://github.com/antirez/lua-cmsgpack

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.nl/

MODULES=	lang/lua

FLAVORS=	lua52
FLAVOR?=

TEST_DEPENDS=${BUILD_PKGPATH}

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared \
	${WRKSRC}/lua_cmsgpack.c -o ${WRKSRC}/cmsgpack.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/cmsgpack.so ${MODLUA_LIBDIR}

do-test:
	cd ${WRKSRC} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
