# $OpenBSD: Makefile,v 1.20 2020/04/25 10:07:41 ajacoutot Exp $

COMMENT =	continuation and extension of Vim

GH_ACCOUNT =	neovim
GH_PROJECT =	neovim
GH_TAGNAME =	v0.4.3

CATEGORIES =	editors devel
HOMEPAGE =	https://neovim.io
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Neovim must be statically linked with libluv, which isn't yet ported.
LUV_VER =	1.30.1-1
LUV =		luv-${LUV_VER}
MASTER_SITES0 =	https://github.com/luvit/luv/releases/download/${LUV_VER}/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${LUV}${EXTRACT_SUFX}:0

# Apache 2.0 + Vim License
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

WANTLIB += c iconv intl ${MODLUA_WANTLIB} m msgpackc pthread termkey
WANTLIB += unibilium util uv vterm

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/lua \
			textproc/intltool

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gperf \
			devel/lpeg \
			devel/lua-bitop

LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libtermkey \
			devel/libuv \
			devel/libvterm \
			devel/msgpack \
			devel/unibilium

RUN_DEPENDS +=		devel/libmpack/lua \
			devel/libmpack/main \
			devel/desktop-file-utils

MAKE_FLAGS +=		USE_BUNDLED=OFF
CONFIGURE_ARGS +=	-DLUA_PRG=${MODLUA_BIN} \
			-DLUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
			-DLUA_LIBRARIES=${MODLUA_LIB} \
			-DLIBLUV_INCLUDE_DIR=${WRKBUILD}/deps/include \
			-DLIBLUV_LIBRARY=${WRKBUILD}/deps/lib/libluv.a \
			-DPREFER_LUA=ON # disables LuaJIT

# Tests need gmake
USE_GMAKE = Yes
# `test_startup_utf8.vim' requires either bash or zsh
MODULES +=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =	No
MODPY_BUILDDEP =	No
TEST_DEPENDS =	shells/bash \
		editors/py-neovim \
		editors/py-neovim${MODPY_FLAVOR}

# Build libluv first as a static library. We opted not to create a libluv
# port because it must be built for a specific Lua version and we don't know
# what version future ports might need. Currently no other port requires
# libluv, so it's simpler to build a static library here.
#
# Most of this target is lifted from ${MODCMAKE_configure} in cmake.port.mk.
# Unfortunately we can't use it directly, as some of the arguments make
# assumptions that can't work for us here.
pre-configure:
	mkdir -p ${WRKBUILD}/build
	cd ${WRKBUILD}/build && \
		${SETENV} CC="${CC}" \
		CXX="${CXX}" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		${CONFIGURE_ENV} \
		${LOCALBASE}/bin/cmake \
		-DBUILD_MODULE=OFF \
		-DCMAKE_COLOR_MAKEFILE=OFF \
		-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON \
		-DCMAKE_INSTALL_PREFIX=${WRKBUILD}/deps \
		-DLUA_BUILD_TYPE=System \
		-DLUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
		-DLUA_LIBRARIES=${MODLUA_LIB} \
		-DWITH_LUA_ENGINE=Lua \
		${WRKDIR}/${LUV}
	cd ${WRKBUILD}/build && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 \
		${MAKE_PROGRAM}
	cd ${WRKBUILD}/build && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 \
		${MAKE_PROGRAM} install

# These are the "old tests". There is also a new suite, but we would need the
# "busted" test suite for Lua, which is not yet ported.
#
# There is currently one (minor) test failure:
# https://github.com/neovim/neovim/issues/10420
do-test:
	cd ${WRKSRC}/src/nvim/testdir && ${SETENV} LC_CTYPE=en_US.UTF-8 \
		${MAKE_PROGRAM} NVIM_PRG=${WRKBUILD}/bin/nvim ${MAKE_FLAGS}

.include <bsd.port.mk>
