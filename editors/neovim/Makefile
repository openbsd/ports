# $OpenBSD: Makefile,v 1.6 2017/12/02 12:28:05 edd Exp $

COMMENT =	continuation and extension of Vim

GH_ACCOUNT =	neovim
GH_PROJECT =	neovim
GH_TAGNAME =	v0.2.2

CATEGORIES =	editors devel
HOMEPAGE =	http://neovim.org
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache 2.0 + Vim License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv intl ${MODLUA_WANTLIB} m msgpackc pthread termkey
WANTLIB += unibilium util uv vterm

MODULES =		devel/cmake \
			lang/lua \
			textproc/intltool

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gperf \
			devel/lpeg \
			devel/lua-bitop

LIB_DEPENDS =		devel/gettext \
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
TEST_DEPENDS = shells/bash

# These are the "old tests". There is also a new suite, but we would need the
# "busted" test suite for Lua, which is not yet ported.
do-test:
	cd ${WRKSRC} && env LC_CTYPE=en_US.UTF-8 ${MAKE_PROGRAM} \
		-C src/nvim/testdir NVIM_PRG=${WRKBUILD}/bin/nvim ${MAKE_FLAGS}

.include <bsd.port.mk>
