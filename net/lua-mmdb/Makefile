# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:31 sthen Exp $

COMMENT =	Lua library for MaxMind GeoIP2/GeoLite2 databases

V =		0.2
PKGNAME =	lua-mmdb-${V}

GH_ACCOUNT =	daurnimator
GH_PROJECT =	mmdblua
GH_TAGNAME =	v${V}

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua

FLAVORS =	lua52 lua53
FLAVOR ?=

.if !${FLAVOR:Mlua53}
RUN_DEPENDS =	devel/lua-compat53,${MODLUA_FLAVOR}
.endif

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
		net/libmaxminddb

NO_BUILD =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DATADIR}mmdb
	${INSTALL_DATA} ${WRKSRC}/mmdb/*.lua ${MODLUA_DATADIR}mmdb

do-test:
	sed -i -e "s,GeoLite2-City,${LOCALSTATEDIR}/db/GeoIP/GeoLite2-Country," \
		${WRKSRC}/example.lua
	cd ${WRKSRC} && ${MODLUA_BIN} example.lua

.include <bsd.port.mk>
