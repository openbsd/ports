COMMENT =	Lua bindings to libmsgpack
PKGNAME =	lua-libmpack-${V}

FLAVORS =	lua52 lua53
FLAVOR ?=

WANTLIB +=		${MODLUA_WANTLIB} m

MODULES =		lang/lua
RUN_DEPENDS +=		libmpack->=${V}:devel/libmpack/main

WRKSRC =		${WRKDIST}/binding/lua
MAKE_FLAGS +=		USE_SYSTEM_LUA=yes \
			LUA_VERSION_MAJ_MIN=${MODLUA_VERSION:S/.//}

# The install target installs in the wrong place. Since it is just one file,
# it is easier to use a custom target than to patch and SUBST_CMD.
do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/mpack.so ${MODLUA_LIBDIR}

# There is a Lua binding test suite written in the "busted framework", which we
# don't yet have in-tree. Until it is, we have our own (minimal) test.
TEST_DEPENDS +=	${FULLPKGNAME}:${BASE_PKGPATH}
do-test:
	${MODLUA_BIN} ${FILESDIR}/test.lua

.include <bsd.port.mk>
