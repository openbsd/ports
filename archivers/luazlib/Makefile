# $OpenBSD: Makefile,v 1.6 2012/05/12 13:16:50 jasper Exp $

COMMENT=	lua binding of zlib
SHARED_ONLY=	Yes
DISTNAME=	luazlib-20100731
REVISION=	0
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
WANTLIB+=	lua m z

CFLAGS+=	`pkg-config --cflags lua`
LINK=		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST} && ${LINK} zlib.so lua_zlib.c -lz -llua -lm

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/zlib.so ${MODLUA_LIBDIR}

do-regress:
	cd ${WRKDIST} && lua test.lua

.include <bsd.port.mk>
