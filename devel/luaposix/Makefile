# $OpenBSD: Makefile,v 1.17 2012/07/10 15:22:44 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	posix library for the lua language
DISTNAME=	luaposix-5.1.4
EPOCH=		0
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/3572/

HOMEPAGE=	http://luaforge.net/projects/luaposix/

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
REGRESS_DEPENDS=${BUILD_PKGPATH}

do-build:
	${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared \
	${WRKDIST}/lposix.c -o ${WRKDIST}/posix.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/posix.so ${MODLUA_LIBDIR}

do-regress:
	cd ${WRKSRC} && ${MODLUA_BIN} *.lua

.include <bsd.port.mk>
