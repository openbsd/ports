# $OpenBSD: Makefile,v 1.1.1.1 2012/11/05 21:26:19 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	MessagePack implementation and bindings for Lua

DISTNAME=	lua-cmsgpack-0.3.0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/antirez/lua-cmsgpack

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/lua

REGRESS_DEPENDS=${BUILD_PKGPATH}

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared \
	${WRKSRC}/lua_cmsgpack.c -o ${WRKSRC}/cmsgpack.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/cmsgpack.so ${MODLUA_LIBDIR}

do-regress:
	cd ${WRKSRC} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
