# $OpenBSD: Makefile,v 1.15 2012/05/15 20:45:12 jasper Exp $
SHARED_ONLY=	Yes

COMMENT=	file system library for the lua language
V=		1.5.0
DISTNAME=	luafilesystem-${V}
PKGNAME=	luafs-${V}
REVISION=	1
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
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/lfs.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/tests/*.lua ${MODLUA_EXAMPLEDIR}

do-regress:
	cp ${WRKDIST}/*.so ${WRKDIST}/tests
	cd ${WRKDIST}/tests && lua test.lua

.include <bsd.port.mk>
