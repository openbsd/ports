# $OpenBSD: Makefile,v 1.8 2012/07/10 15:22:44 jasper Exp $

COMMENT=	lua binding of zlib
SHARED_ONLY=	Yes
DISTNAME=	luazlib-20100731
REVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	http://distfiles.nl/

HOMEPAGE=	http://github.com/brimworks/lua-zlib/

# MIT
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/lua
REGRESS_DEPENDS += ${BASE_PKGPATH}
WANTLIB+=	${MODLUA_WANTLIB} m z

CFLAGS+=	`pkg-config --cflags ${MODLUA_DEP}`
LINK=		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST} && ${LINK} zlib.so lua_zlib.c -lz ${MODLUA_LIB} -lm

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/zlib.so ${MODLUA_LIBDIR}

do-regress:
	cd ${WRKDIST} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
