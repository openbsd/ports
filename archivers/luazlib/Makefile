# $OpenBSD: Makefile,v 1.10 2013/08/07 21:57:40 naddy Exp $

COMMENT=	lua binding of zlib
SHARED_ONLY=	Yes
DISTNAME=	luazlib-20100731
REVISION=	2
CATEGORIES=	archivers
MASTER_SITES=	http://distfiles.nl/

HOMEPAGE=	https://github.com/brimworks/lua-zlib/

# MIT
PERMIT_PACKAGE_CDROM= Yes

MODULES=	lang/lua
TEST_DEPENDS += ${BASE_PKGPATH}
WANTLIB+=	${MODLUA_WANTLIB} m z

CFLAGS+=	`pkg-config --cflags ${MODLUA_DEP}`
LINK=		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST} && ${LINK} zlib.so lua_zlib.c -lz ${MODLUA_LIB} -lm

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/zlib.so ${MODLUA_LIBDIR}

do-test:
	cd ${WRKDIST} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
