# $OpenBSD: Makefile,v 1.18 2019/07/13 22:12:09 naddy Exp $

COMMENT =	pure Lua libraries focusing on input data handling

GH_ACCOUNT =	stevedonovan
GH_PROJECT =	Penlight
GH_TAGNAME =	1.5.4
PKGNAME =	lua-penlight-${GH_TAGNAME}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://stevedonovan.github.io/Penlight/

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/lua

MODLUA_RUN_DEPENDS =	devel/luafs

MODLUA_TEST_DEPENDS +=	${PKGPATH}

FLAVORS =	lua52 lua53
FLAVOR ?=

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/pl
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/lua/pl/*.lua ${MODLUA_DATADIR}/pl/
	${INSTALL_DATA} ${WRKSRC}/doc/manual/*.md ${MODLUA_DOCDIR}

do-test:
	cd ${WRKSRC} && ${MODLUA_BIN} ./run.lua

.include <bsd.port.mk>
