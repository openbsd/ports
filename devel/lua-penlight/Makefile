# $OpenBSD: Makefile,v 1.8 2014/07/10 11:06:15 rpe Exp $

COMMENT =	pure Lua libraries focusing on input data handling

GH_ACCOUNT =	stevedonovan
GH_PROJECT =	Penlight
GH_TAGNAME =	1.3.1
GH_COMMIT =	62fc78dd0d4834619106797f8978ffdb302cb484
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	lua-penlight-${GH_TAGNAME}
CATEGORIES =	devel

HOMEPAGE =	http://stevedonovan.github.io/Penlight/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =Yes

MODULES =	lang/lua

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
