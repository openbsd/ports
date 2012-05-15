# $OpenBSD: Makefile,v 1.4 2012/05/15 15:15:19 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		lua library for the expat XML parser
DISTNAME =		luaexpat-1.2.0
REVISION =		0

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
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}/lxp
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/src/lxp.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/lxp/lom.lua ${MODLUA_DATADIR}/lxp
	${INSTALL_DATA} ${WRKSRC}/doc/us/{examples,index,license,lom,manual}.html \
		${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/luaexpat.png ${MODLUA_DOCDIR}

do-regress:
	cd ${WRKSRC}/tests && ${LUA} test-lom.lua && ${LUA} test.lua

.include <bsd.port.mk>
