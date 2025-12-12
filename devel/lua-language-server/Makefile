# static_assert(sizeof(FutexTimespec) == sizeof(timespec));
# bee.lua/bee/thread/atomic_sync.cpp:55:41: note: expression evaluates to '8 == 12'
ONLY_FOR_ARCHS =	amd64 aarch64

COMMENT =		language server for Lua

V =			3.16.1
PKGNAME =		lua-language-server-${V}

DIST_TUPLE +=		github LuaLS lua-language-server ${V} . \
	github CppCXY EmmyLuaCodeStyle 8500f3af178f097331d938378648078d023f4c7c 3rd/EmmyLuaCodeStyle \
	github actboy168 bee.lua ee7efd07155c33c2c95f4a66d17b2f3ef122896a 3rd/bee.lua \
	github actboy168 json.lua f94860ef551036490c5b3db6098325267f42ef28 3rd/json.lua \
	github love2d-community love-api 853639288547618dece86c3a8e52348fe304eba2 3rd/love-api \
	github bjornbytes lovr-docs e89c753e1c2849b7533481fcf058095f8e050b9f 3rd/lovr-api \
	github sqmedeiros lpeglabel 912b0b9e8641074408ffc2259e069b188e0c717b 3rd/lpeglabel \
	github actboy168 luamake a83fa224d083ad5ee4d39367621ee8c8c8db379b 3rd/luamake \
	github actboy168 bee.lua 973fd8a0ba2d3a0f1988ac03c1817e8c932a7b82 3rd/luamake/bee.lua

CATEGORIES =		devel

HOMEPAGE =		https://github.com/LuaLS/lua-language-server

MAINTAINER =            Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} lib/inotify/inotify c m pthread

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/libinotify

MODULES =		lang/lua

BUILD_DEPENDS =		devel/ninja

NO_TEST =		Yes

LUA_LS_HOME =		${PREFIX}/share/lua-language-server

pre-configure:
	sed -i 's/%%LUA_VERSION%%/${V}/' ${WRKSRC}/script/version.lua

do-build:
	${SETENV} ${MAKE_ENV} ninja -C ${WRKSRC}/3rd/luamake \
		-f compile/ninja/openbsd.ninja -j${MAKE_JOBS} -v
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ./3rd/luamake/luamake -v

do-install:
	${SUBST_PROGRAM} ${FILESDIR}/lua-language-server \
		${PREFIX}/bin/lua-language-server
	${INSTALL_DATA_DIR} ${LUA_LS_HOME}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/bin/lua-language-server ${LUA_LS_HOME}/bin/
	${INSTALL_DATA} ${WRKSRC}/bin/main.lua ${LUA_LS_HOME}/bin/
	${INSTALL_DATA} ${WRKSRC}/{debugger,main}.lua ${LUA_LS_HOME}/
	cd ${WRKSRC} && pax -rw {locale,meta,script} ${LUA_LS_HOME}/

.include <bsd.port.mk>
