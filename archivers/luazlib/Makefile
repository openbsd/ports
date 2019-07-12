# $OpenBSD: Makefile,v 1.14 2019/07/12 21:05:06 sthen Exp $

COMMENT=	lua binding of zlib
DISTNAME=	luazlib-20100731
REVISION=	2
CATEGORIES=	archivers
MASTER_SITES=	https://distfiles.nl/

HOMEPAGE=	https://github.com/brimworks/lua-zlib/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua
TEST_DEPENDS += ${BASE_PKGPATH}
WANTLIB+=	${MODLUA_WANTLIB} m z

CFLAGS+=	`pkg-config --cflags ${MODLUA_DEP}`
LINK=		${MAKE_ENV} ${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST} && ${LINK} zlib.so lua_zlib.c -lz ${MODLUA_LIB} -lm

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/zlib.so ${MODLUA_LIBDIR}

do-test:
	cd ${WRKDIST} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
