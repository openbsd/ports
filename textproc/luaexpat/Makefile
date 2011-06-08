# $OpenBSD: Makefile,v 1.3 2011/06/08 14:23:11 gsoares Exp $

SHARED_ONLY =		Yes

COMMENT =		lua library for the expat XML parser
DISTNAME =		luaexpat-1.2.0

CATEGORIES =		textproc
HOMEPAGE =		http://matthewwild.co.uk/projects/luaexpat/
MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		expat
MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/lua
REGRESS_DEPENDS =	textproc/luaexpat

MAKE_ENV+=		LUA_INC="${LOCALBASE}/include"
USE_GMAKE =		Yes
MAKE_FILE =		makefile
ALL_TARGET =		lib

LUA = 			${LOCALBASE}/bin/lua

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/lxp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luaexpat
	${INSTALL_DATA} ${WRKSRC}/src/lxp.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/lxp/lom.lua ${MODLUA_DATADIR}/lxp
	${INSTALL_DATA} ${WRKSRC}/doc/us/{examples,index,license,lom,manual}.html \
		${PREFIX}/share/doc/luaexpat
	${INSTALL_DATA} ${WRKSRC}/doc/us/luaexpat.png ${PREFIX}/share/doc/luaexpat

do-regress:
	cd ${WRKSRC}/tests && ${LUA} test-lom.lua && ${LUA} test.lua

.include <bsd.port.mk>
