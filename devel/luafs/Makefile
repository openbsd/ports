# $OpenBSD: Makefile,v 1.19 2013/08/07 21:57:47 naddy Exp $
SHARED_ONLY=	Yes

COMMENT=	file system library for the lua language
V=		1.6.2
DISTNAME=	luafilesystem-${V}
PKGNAME=	luafs-${V}
CATEGORIES=	devel
MASTER_SITES=	https://github.com/downloads/keplerproject/luafilesystem/

HOMEPAGE=	http://www.keplerproject.org/luafilesystem/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/lua
ALL_TARGET=	lib

MAKE_ENV+=	LUA_LIBDIR=${MODLUA_LIBDIR} LUA_INC=${MODLUA_INCL_DIR}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/lfs.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/tests/*.lua ${MODLUA_EXAMPLEDIR}

do-test:
	cp ${WRKDIST}/*.so ${WRKDIST}/tests
	cd ${WRKDIST}/tests && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
