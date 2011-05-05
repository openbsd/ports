# $OpenBSD: Makefile,v 1.13 2011/05/05 23:16:19 gsoares Exp $
SHARED_ONLY=	Yes

COMMENT=	file system library for the lua language
V=		1.5.0
DISTNAME=	luafilesystem-${V}
PKGNAME=	luafs-${V}
CATEGORIES=	devel
MASTER_SITES=	http://github.com/downloads/keplerproject/luafilesystem/

HOMEPAGE=	http://www.keplerproject.org/luafilesystem/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
ALL_TARGET=	lib

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luafs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luafs
	${INSTALL_DATA} ${WRKSRC}/lfs.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${PREFIX}/share/doc/luafs
	${INSTALL_DATA} ${WRKSRC}/tests/*.lua ${PREFIX}/share/examples/luafs

do-regress:
	cp ${WRKDIST}/*.so ${WRKDIST}/tests
	cd ${WRKDIST}/tests && lua test.lua

.include <bsd.port.mk>
