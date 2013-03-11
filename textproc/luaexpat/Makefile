# $OpenBSD: Makefile,v 1.8 2013/03/11 11:42:42 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		lua library for the expat XML parser
DISTNAME =		luaexpat-1.2.0
REVISION =		2

CATEGORIES =		textproc
HOMEPAGE =		http://matthewwild.co.uk/projects/luaexpat/
MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		expat
MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/lua
MODLUA_TEST_DEPENDS =	textproc/luaexpat

REGRESS_FILES =		test-lom test

MAKE_FLAGS+=		LUA_INC="${MODLUA_INCL_DIR}"
USE_GMAKE =		Yes
MAKE_FILE =		makefile
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
