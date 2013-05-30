# $OpenBSD: Makefile,v 1.3 2013/05/30 16:50:05 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	MessagePack implementation and bindings for Lua

DISTNAME=	lua-cmsgpack-0.3.0
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/antirez/lua-cmsgpack

# BSD
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/lua

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
