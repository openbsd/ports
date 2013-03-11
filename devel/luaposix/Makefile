# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:11 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	posix library for the lua language
DISTNAME=	luaposix-5.1.4
EPOCH=		0
REVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/3572/

HOMEPAGE=	http://luaforge.net/projects/luaposix/

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/lua
TEST_DEPENDS=${BUILD_PKGPATH}

do-build:
	${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared \
	${WRKDIST}/lposix.c -o ${WRKDIST}/posix.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/posix.so ${MODLUA_LIBDIR}

do-test:
	cd ${WRKSRC} && ${MODLUA_BIN} *.lua

.include <bsd.port.mk>
