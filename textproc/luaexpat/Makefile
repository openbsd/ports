# $OpenBSD: Makefile,v 1.1.1.1 2009/08/15 18:19:02 jolan Exp $

SHARED_ONLY =		Yes

COMMENT =		lua library for the expat XML parser
DISTNAME =		luaexpat-1.1

CATEGORIES =		textproc
HOMEPAGE =		http://www.keplerproject.org/luaexpat/
MAINTAINER =		Scott Vokes <vokes.s@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		expat
MASTER_SITES =		http://luaforge.net/frs/download.php/2469/

MODULES =		lang/lua
REGRESS_DEPENDS =	::textproc/luaexpat

MAKE_ENV+=		LUA_INC="${LOCALBASE}/include"
USE_GMAKE =		Yes
MAKE_FILE =		makefile
ALL_TARGET =		lib

LUA = 			${LOCALBASE}/bin/lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1/lxp
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luaexpat
	${INSTALL_DATA} ${WRKSRC}/src/lxp.so ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/src/lxp/lom.lua ${PREFIX}/lib/lua/5.1/lxp
	${INSTALL_DATA} ${WRKSRC}/doc/us/{examples,index,license,lom,manual}.html \
		${PREFIX}/share/doc/luaexpat
	${INSTALL_DATA} ${WRKSRC}/doc/us/luaexpat.png ${PREFIX}/share/doc/luaexpat

do-regress:
	cd ${WRKSRC}/tests && ${LUA} test-lom.lua && ${LUA} test.lua

.include <bsd.port.mk>
