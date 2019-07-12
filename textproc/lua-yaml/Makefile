# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:01 sthen Exp $

COMMENT =	Lua library for parsing and emitting YAML
V =		6.1

PKGNAME =	lua-yaml-${V}
REVISION =	0

GH_ACCOUNT =	gvvaughan
GH_PROJECT =	lyaml
GH_TAGNAME =	release-v${V}

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		yaml-0

MODULES =		lang/lua

LIB_DEPENDS =		devel/libyaml

FLAVORS =		lua52 lua53
FlAVOR ?=

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${PREFIX}/include" \
			LDFLAGS="-L${PREFIX}/lib" \
			LUA=${MODLUA_BIN} \
			LUA_INCLUDE=-I${MODLUA_INCL_DIR}

# Test requires specl, specl requires lyaml.
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}/lyaml
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}/modules
	${INSTALL_DATA} ${WRKSRC}/ext/yaml/.libs/yaml.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/lib/lyaml.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/lib/lyaml/*.lua ${MODLUA_DATADIR}/lyaml
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${WRKSRC}/doc/*.css ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/modules/*.html ${MODLUA_DOCDIR}/modules

.include <bsd.port.mk>
