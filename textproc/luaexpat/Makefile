# $OpenBSD: Makefile,v 1.9 2014/06/17 16:08:24 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		lua library for the expat XML parser
DISTNAME =		luaexpat-1.3.0

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
