# $OpenBSD: Makefile,v 1.20 2015/02/20 08:17:30 dcoppa Exp $
SHARED_ONLY =	Yes

COMMENT =	file system library for the lua language
V =		1_6_3

DISTNAME =	${GH_PROJECT}-v_${V}
PKGNAME =	luafs-${V:S/_/./g}
WRKDIST =	${WRKDIR}/${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://www.keplerproject.org/luafilesystem/

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =	keplerproject
GH_PROJECT =	luafilesystem
GH_TAGNAME =	v_${V}
GH_COMMIT =	8014725009e195ffb502bcd65ca4e93b60a1b21c

MODULES =	lang/lua

MAKE_ENV +=	LUA_LIBDIR=${MODLUA_LIBDIR} LUA_INC=${MODLUA_INCL_DIR}

ALL_TARGET =	lib

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
