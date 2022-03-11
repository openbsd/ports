COMMENT =	Lua library for time and date manipulation

V =		0.4-1
PKGNAME =	lua-tz-${V:S/-/./}
REVISION =	0

GH_ACCOUNT =	daurnimator
GH_PROJECT =	luatz
GH_TAGNAME =	v${V}

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua

TEST_DEPENDS =	${BUILD_PKGPATH}

FLAVORS =	lua52 lua53
FLAVOR ?=

NO_BUILD =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DATADIR}/luatz
	${INSTALL_DATA} ${WRKSRC}/luatz/*.lua ${MODLUA_DATADIR}/luatz
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.md ${MODLUA_DOCDIR}

do-test:
	cd ${WRKSRC}/examples && ${MODLUA_BIN} os_date.lua

.include <bsd.port.mk>
