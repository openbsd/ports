USE_NOBTCFI =	Yes

COMMENT =	Lua bindings for Steam API
V =		2.0.0
DISTNAME =	${GH_PROJECT}-${V}
GH_ACCOUNT =	uspgamedev
GH_PROJECT =	luasteam
GH_TAGNAME =	v${V}+fix
REVISION =	0

CATEGORIES =	games
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} luajit-5.1 m steam_api

# C++11
COMPILER =	base-clang ports-gcc
MODULES =	lang/lua
LIB_DEPENDS =	games/goldberg_emulator \
		lang/luajit
INCL =		-I/usr/local/include/goldberg_emulator/steam \
		-I/usr/local/include/luajit-2.1
LDFLAGS +=	-L/usr/local/lib -lsteam_api
MAKE_FLAGS =	CXXFLAGS="${CXXFLAGS} ${INCL}" LDFLAGS="${LDFLAGS}"
USE_GMAKE =	Yes
NO_TEST =	Yes
WRKDIST =	${WRKDIR}/${DISTNAME}-fix
ALL_TARGET =	openbsd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/${MODLUA_VERSION}
	${INSTALL_DATA} ${WRKBUILD}/luasteam.so \
		${PREFIX}/lib/lua/${MODLUA_VERSION}/

.include <bsd.port.mk>
