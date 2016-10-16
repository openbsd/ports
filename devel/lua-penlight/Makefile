# $OpenBSD: Makefile,v 1.14 2016/10/16 23:21:22 jca Exp $

COMMENT =	pure Lua libraries focusing on input data handling

GH_ACCOUNT =	stevedonovan
GH_PROJECT =	Penlight
GH_TAGNAME =	1.4.1
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
