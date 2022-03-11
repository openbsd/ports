COMMENT =	Lua module for conversion between markup formats

V =		0.5.0
PKGNAME =	lua-lunamark-${V}
REVISION =	0

GH_ACCOUNT =	jgm
GH_PROJECT =	lunamark
GH_TAGNAME =	${V}

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua

FLAVORS =	lua52 lua53
FLAVOR ?=

MODLUA_RUN_DEPENDS =	converters/lua-utf8 \
			devel/lpeg \
			textproc/lua-cosmo

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/lunamark.lua ${MODLUA_DATADIR}
	cp -r ${WRKSRC}/lunamark ${MODLUA_DATADIR}

.include <bsd.port.mk>
