# $OpenBSD: Makefile,v 1.3 2013/08/13 11:31:50 dcoppa Exp $

COMMENT =	pure Lua libraries focusing on input data handling

VER =		1.2.1
DISTNAME =	Penlight-${VER}
PKGNAME =	lua-penlight-${VER}
CATEGORIES =	devel

HOMEPAGE =	http://stevedonovan.github.io/Penlight/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =Yes

MODULES =	lang/lua

MASTER_SITES =	https://github.com/stevedonovan/Penlight/archive/${VER}.tar.gz?bleh=/

MODLUA_RUN_DEPENDS =	devel/luafs

MODLUA_TEST_DEPENDS +=	${PKGPATH}

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/pl
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/lua/pl/*.lua ${MODLUA_DATADIR}/pl/
	${INSTALL_DATA} ${WRKSRC}/doc/manual/*.md ${MODLUA_DOCDIR}

do-test:
	cd ${WRKSRC} && ${MODLUA_BIN} ./run.lua

.include <bsd.port.mk>
