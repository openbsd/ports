# static_assert(sizeof(FutexTimespec) == sizeof(timespec));
# bee.lua/bee/thread/atomic_sync.cpp:55:41: note: expression evaluates to '8 == 12'
ONLY_FOR_ARCHS =	amd64 aarch64

COMMENT =		language server for Lua

V =			3.16.1
PKGNAME =		lua-language-server-${V}

DIST_TUPLE +=		github LuaLS lua-language-server ${V} . \
	github CppCXY EmmyLuaCodeStyle 8500f3af178f097331d938378648078d023f4c7c 3rd/EmmyLuaCodeStyle \
	github actboy168 bee.lua dd7853f1bd010c701fb5fc4ee0d4082cdbc07ae8 3rd/bee.lua \
	github actboy168 json.lua aff2a3d90dd35b5761301de0e2af700266aec41a 3rd/json.lua \
	github love2d-community love-api 853639288547618dece86c3a8e52348fe304eba2 3rd/love-api \
	github bjornbytes lovr-docs e89c753e1c2849b7533481fcf058095f8e050b9f 3rd/lovr-api \
	github sqmedeiros lpeglabel 912b0b9e8641074408ffc2259e069b188e0c717b 3rd/lpeglabel \
	github actboy168 luamake 0e90778390fb11d917c6e4c5cb963356a0780fb0 3rd/luamake \
	github actboy168 bee.lua f242926e41b15b78dd554cec409deb5c7327c1c4 3rd/luamake/bee.lua

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
