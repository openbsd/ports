# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:01 sthen Exp $

COMMENT =		lua library for the expat XML parser
DISTNAME =		luaexpat-1.3.0
REVISION =		0

CATEGORIES =		textproc
HOMEPAGE =		http://matthewwild.co.uk/projects/luaexpat/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		expat
MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/lua
MODLUA_TEST_DEPENDS =	textproc/luaexpat

FLAVORS =		lua52 lua53
FLAVOR ?=

REGRESS_FILES =		test-lom test

MAKE_FLAGS+=		LUA_INC="-I${MODLUA_INCL_DIR}"
USE_GMAKE =		Yes
ALL_TARGET =		lib

LUA = 			${MODLUA_BIN}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}/lxp
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/src/lxp.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/lxp/lom.lua ${MODLUA_DATADIR}/lxp
	${INSTALL_DATA} ${WRKSRC}/doc/us/{examples,index,license,lom,manual}.html \
		${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/luaexpat.png ${MODLUA_DOCDIR}

do-test:
.for r in ${REGRESS_FILES}
	cd ${WRKSRC}/tests && ${MODLUA_BIN} $r.lua
.endfor

.include <bsd.port.mk>
