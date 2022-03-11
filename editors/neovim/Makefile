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

GH_ACCOUNT =	neovim
GH_PROJECT =	neovim
GH_TAGNAME =	v0.6.1

CATEGORIES =	editors devel
HOMEPAGE =	https://neovim.io
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# The versions listed here must match those in third-party/CMakeLists.txt.
LUV_VER =	1.42.0-1
LUAJIT_VER =	b4b2dce9fc3ffaaaede39b36d06415311e2aa516

MASTER_SITES0 =	https://github.com/luvit/luv/releases/download/${LUV_VER}/
MASTER_SITES1 = https://github.com/LuaJIT/LuaJIT/archive/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		luv-${LUV_VER}${EXTRACT_SUFX}:0 \
		luajit-{}${LUAJIT_VER}${EXTRACT_SUFX}:1

# Neovim: Apache 2.0 + Vim License
# LuaJIT: MIT + public domain
# libluv: Apache 2.0
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

WANTLIB += c iconv intl m msgpackc pthread termkey
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
			devel/libtermkey \
			devel/libuv \
			devel/libvterm \
			devel/msgpack \
			devel/unibilium \
			textproc/tree-sitter

RUN_DEPENDS +=		devel/libmpack/lua \
			devel/libmpack/main \
			devel/desktop-file-utils \
			devel/lua-compat53 \
			x11/gtk+3,-guic

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS +=	-DUSE_BUNDLED=OFF \
			-DLIBLUV_INCLUDE_DIR=${STATIC_DEPS_INST}/include \
			-DLIBLUV_LIBRARY=${STATIC_DEPS_INST}/lib/libluv_a.a
.if ${EMBED_LUAJIT} == "Yes"
CONFIGURE_ARGS +=	-DLUA_PRG=${STATIC_DEPS_INST}/bin/luajit-2.1.0-beta3 \
			-DLUAJIT_INCLUDE_DIR=${STATIC_DEPS_INST}/include/luajit-2.1 \
			-DLUAJIT_LIBRARY=${STATIC_DEPS_INST}/lib/libluajit-5.1.a
.else
CONFIGURE_ARGS +=	-DPREFER_LUA=ON \
			-DLUA_PRG=${MODLUA_BIN} \
			-DLUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
			-DLUA_LIBRARIES=${MODLUA_LIB}
.endif

# Tests need gmake
USE_GMAKE = Yes
# `test_startup_utf8.vim' requires either bash or zsh
MODULES +=	lang/python
MODPY_RUNDEP =	No
MODPY_BUILDDEP =No
TEST_DEPENDS =	shells/bash \
		editors/py-neovim \
		editors/py-neovim${MODPY_FLAVOR}

# Move static deps source code under WRKDIST so that they can be patched.
STATIC_DEPS_WRKSRC=${WRKDIST}/static-deps/
post-extract:
	mkdir ${STATIC_DEPS_WRKSRC}
	mv ${WRKDIR}/LuaJIT-${LUAJIT_VER} ${STATIC_DEPS_WRKSRC}/luajit
	mv ${WRKDIR}/luv-${LUV_VER} ${STATIC_DEPS_WRKSRC}/luv

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
# If cscope is installed, one test fails:
# https://github.com/neovim/neovim/issues/12744
#
do-test:
	true
	${SETENV} LC_CTYPE=en_US.UTF-8 \
		${MAKE_PROGRAM} -C ${WRKSRC}/src/nvim/testdir \
		HOME=${WRKBUILD} NVIM_PRG=${WRKBUILD}/bin/nvim ${MAKE_FLAGS}

.include <bsd.port.mk>
