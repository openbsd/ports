# $OpenBSD: Makefile,v 1.26 2019/07/12 20:44:42 sthen Exp $

COMMENT =	file system library for the lua language
V =		1_6_3
REVISION =	1

DISTNAME =	${GH_PROJECT}-v_${V}
PKGNAME =	luafs-${V:S/_/./g}
WRKDIST =	${WRKDIR}/${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://keplerproject.github.io/luafilesystem/

# MIT
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =	keplerproject
GH_PROJECT =	luafilesystem
GH_TAGNAME =	v_${V}

MODULES =	lang/lua

FLAVORS =	lua52 lua53
FLAVOR ?=

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
