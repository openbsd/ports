# $OpenBSD: Makefile,v 1.11 2009/09/06 19:25:22 jolan Exp $
SHARED_ONLY=	Yes

COMMENT=	file system library for the lua language
DISTNAME=	luafilesystem-1.4.2
PKGNAME=	luafs-1.4.2
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/3931/

HOMEPAGE=	http://www.keplerproject.org/luafilesystem/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
ALL_TARGET=	lib

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luafs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luafs
	${INSTALL_DATA} ${WRKSRC}/lfs.so ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${PREFIX}/share/doc/luafs
	${INSTALL_DATA} ${WRKSRC}/tests/*.lua ${PREFIX}/share/examples/luafs

do-regress:
	cp ${WRKDIST}/*.so ${WRKDIST}/tests
	cd ${WRKDIST}/tests && lua test.lua

.include <bsd.port.mk>
