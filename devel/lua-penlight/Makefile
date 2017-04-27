# $OpenBSD: Makefile,v 1.15 2017/04/27 14:16:20 dcoppa Exp $

COMMENT =	pure Lua libraries focusing on input data handling

GH_ACCOUNT =	stevedonovan
GH_PROJECT =	Penlight
GH_TAGNAME =	1.5.2
PKGNAME =	lua-penlight-${GH_TAGNAME}
CATEGORIES =	devel

HOMEPAGE =	http://stevedonovan.github.io/Penlight/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =Yes

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
