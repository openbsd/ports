# Use LuaJIT where possible, as some plugins assume it's available. Arches
# that can't use LuaJIT have to use the system Lua (and some plugins may not
# work).
.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "aarch64" || \
	${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "powerpc"
EMBED_LUAJIT =	Yes
.else
EMBED_LUAJIT =	No
.endif

COMMENT =	continuation and extension of Vim

DIST_TUPLE =	github neovim neovim v0.10.0 .
REVISION = 0

# embedded luajit
USE_NOBTCFI =	Yes

CATEGORIES =	editors devel
HOMEPAGE =	https://neovim.io
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# The versions listed here must match those in cmake.deps/deps.txt.
STATIC_DEPS_WRKSRC =		${WRKDIST}/static-deps/
DIST_TUPLE +=	github luvit luv 1.48.0-2 ${STATIC_DEPS_WRKSRC}/luv
DIST_TUPLE +=	github LuaJIT LuaJIT 75e92777988017fe47c5eb290998021bbf972d1f \
		${STATIC_DEPS_WRKSRC}/luajit
DIST_TUPLE +=	github keplerproject lua-compat-5.3 v0.13 \
		${STATIC_DEPS_WRKSRC}/lua-compat-5.3

# Neovim: Apache 2.0 + Vim License
# LuaJIT: MIT + public domain
# libluv: Apache 2.0
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

WANTLIB += c iconv intl m msgpack-c pthread
WANTLIB += tree-sitter unibilium util uv vterm

.if ${EMBED_LUAJIT} != "Yes"
WANTLIB += ${MODLUA_WANTLIB}
.endif

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/lua \
			textproc/intltool

# LuaJIT is binary compatible with Lua-5.1 extension modules, so we can use
# them directly, even on architectures where we will be embedding LuaJIT.
# https://luajit.org/extensions.html
MODLUA_VERSION =	5.1

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gperf \
			devel/lpeg \
			devel/lua-bitop

LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libuv \
			devel/libvterm>=0.3.3 \
			devel/msgpack \
			devel/unibilium \
			textproc/tree-sitter>=0.20.9

RUN_DEPENDS +=		devel/libmpack/lua \
			devel/libmpack/main \
			devel/lpeg \
			devel/desktop-file-utils \
			devel/lua-compat53 \
			x11/gtk+4,-guic

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS +=	-DUSE_BUNDLED=OFF \
			-DLUV_INCLUDE_DIR=${STATIC_DEPS_INST}/include \
			-DLUV_LIBRARY=${STATIC_DEPS_INST}/lib/libluv.a
.if ${EMBED_LUAJIT} == "Yes"
CONFIGURE_ARGS +=	-DLUA_PRG=${STATIC_DEPS_INST}/bin/luajit \
			-DLUAJIT_INCLUDE_DIR=${STATIC_DEPS_INST}/include/luajit-2.1 \
			-DLUAJIT_LIBRARY=${STATIC_DEPS_INST}/lib/libluajit-5.1.a
.else
CONFIGURE_ARGS +=	-DPREFER_LUA=ON \
			-DLUA_PRG=${MODLUA_BIN} \
			-DLUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
			-DLUA_LIBRARIES=${MODLUA_LIB}
.endif
MAKE_ENV =		CCACHE_DISABLE=true

# Tests need gmake
USE_GMAKE = Yes
# `test_startup_utf8.vim' requires either bash or zsh
MODULES +=	lang/python
MODPY_RUNDEP =	No
MODPY_BUILDDEP =No
TEST_DEPENDS =	shells/bash \
		editors/py-neovim \
		editors/py-neovim${MODPY_FLAVOR}

# Build LuaJIT (if required) and libluv as static libraries.
#
# We opted not to create a libluv port because it must be built for a specific
# Lua version and we don't know what version future ports might need. Currently
# no other port requires libluv, so it's simpler to build a static library
# here.
#
# Most of the libluv target is lifted from ${MODCMAKE_configure} in
# cmake.port.mk. Unfortunately we can't use it directly, as some of the
# arguments make assumptions that can't work for us here.
#
# Neovim plugins expect a very specific version of LuaJIT, so it only really
# makes sense to embed it.
STATIC_DEPS_WRKBUILD=${WRKBUILD}/static-deps-build
STATIC_DEPS_INST=${WRKBUILD}/static-deps-inst
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
LUAJIT_TARGET_LIBS =	"-lc++abi -lpthread"
WANTLIB +=		c++abi pthread
.endif
pre-configure:
	mkdir -p ${STATIC_DEPS_WRKBUILD} ${STATIC_DEPS_PREFIX}

.if ${EMBED_LUAJIT} == "Yes"
	# Build LuaJIT.
	# We can't build LuaJIT out of its src dir, so copy it so that we can
	# support SEPARATE_BUILD.
	cp -r ${STATIC_DEPS_WRKSRC}/luajit ${STATIC_DEPS_WRKBUILD}/luajit
	cd ${STATIC_DEPS_WRKBUILD}/luajit/src && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		PREFIX=${STATIC_DEPS_INST} CC=${CC} CCOPT="${CFLAGS}" \
		CCOPT_x86="" Q="" TARGET_LIBS=${LUAJIT_TARGET_LIBS} \
		BUILDMODE=static
	cd ${STATIC_DEPS_WRKBUILD}/luajit && \
		${SETENV} ${MAKE_ENV} Q="" ${MAKE_PROGRAM} install \
		PREFIX=${STATIC_DEPS_INST}
.endif

	# Build libluv.
	mkdir -p ${STATIC_DEPS_WRKBUILD}/luv
	cd ${STATIC_DEPS_WRKBUILD}/luv && \
		${SETENV} CC="${CC}" \
		CXX="${CXX}" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		${CONFIGURE_ENV} \
		${LOCALBASE}/bin/cmake \
		-DBUILD_MODULE=OFF \
		-DBUILD_STATIC_LIBS=ON \
		-DCMAKE_COLOR_MAKEFILE=OFF \
		-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON \
		-DCMAKE_SUPPRESS_REGENERATION=ON \
		-DCMAKE_INSTALL_PREFIX=${STATIC_DEPS_INST} \
		-DLUA_BUILD_TYPE=System \
		-DLUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
		-DLUA_LIBRARIES=${MODLUA_LIBDIR} \
		-DWITH_SHARED_LIBUV=ON \
		-DLUA_COMPAT53_DIR=${STATIC_DEPS_WRKSRC}/lua-compat-5.3 \
		-DWITH_LUA_ENGINE=Lua \
		${STATIC_DEPS_WRKSRC}/luv
	cd ${STATIC_DEPS_WRKBUILD}/luv && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 \
		${MAKE_PROGRAM}
	cd ${STATIC_DEPS_WRKBUILD}/luv && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 \
		${MAKE_PROGRAM} install

# These are the "old tests". There is also a new suite, but we would need the
# "busted" test suite for Lua, which is not yet ported.
#
# Test_language_cmd fails due to:
# https://github.com/neovim/neovim/issues/19331
#
# Test_linebreak_list test fails (test_breakindent.vim)
#
do-test:
	true
	${SETENV} LC_CTYPE=en_US.UTF-8 \
		${MAKE_PROGRAM} -C ${WRKSRC}/test/old/testdir \
		HOME=${WRKBUILD} NVIM_PRG=${WRKBUILD}/bin/nvim ${MAKE_FLAGS}

.include <bsd.port.mk>
