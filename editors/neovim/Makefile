# $OpenBSD: Makefile,v 1.18 2019/07/09 09:46:16 edd Exp $

COMMENT =	continuation and extension of Vim

GH_ACCOUNT =	neovim
GH_PROJECT =	neovim
GH_TAGNAME =	v0.3.8

CATEGORIES =	editors devel
HOMEPAGE =	https://neovim.io
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache 2.0 + Vim License
PERMIT_PACKAGE =	Yes

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

MAKE_FLAGS +=		USE_BUNDLED_DEPS=OFF
CONFIGURE_ARGS +=	-DLUA_PRG=${MODLUA_BIN} \
			-DLUA_INCLUDE_DIR=${MODLUA_INCL_DIR} \
			-DLUA_LIBRARIES=${MODLUA_LIB} \
			-DPREFER_LUA=ON # disables LuaJIT

# Tests need gmake
USE_GMAKE = Yes
# `test_startup_utf8.vim' requires either bash or zsh
TEST_DEPENDS =	shells/bash \
		editors/py-neovim \
		editors/py-neovim,python3

# These are the "old tests". There is also a new suite, but we would need the
# "busted" test suite for Lua, which is not yet ported.
#
# There is currently one (minor) test failure:
# https://github.com/neovim/neovim/issues/10420
do-test:
	cd ${WRKSRC}/src/nvim/testdir && env LC_CTYPE=en_US.UTF-8 \
		${MAKE_PROGRAM} NVIM_PRG=${WRKBUILD}/bin/nvim ${MAKE_FLAGS}

.include <bsd.port.mk>
