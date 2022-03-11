COMMENT =	safe templates engine for Lua

V =		16.06.04
PKGNAME =	lua-cosmo-${V}

GH_ACCOUNT =	mascarenhas
GH_PROJECT =	cosmo
GH_TAGNAME =	v${V}
REVISION =	1

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua

MODLUA_RUN_DEPENDS =	devel/lpeg

TEST_DEPENDS =	${BUILD_PKGPATH}

FLAVORS =	lua52 lua53
FLAVOR ?=

MAKE_ENV =	LUA_DIR=${MODLUA_DATADIR}

USE_GMAKE =	Yes

NO_BUILD =	Yes

PKG_ARCH =	*

post-install:
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/{index.html,cosmo.png} ${MODLUA_DOCDIR}

do-test:
	cd ${WRKDIST}/tests && ${MODLUA_BIN} test_cosmo.lua

.include <bsd.port.mk>
