# $OpenBSD: Makefile,v 1.10 2020/06/20 01:36:08 bcallah Exp $

ONLY_FOR_ARCHS =	${CXX11_ARCHS}

V =		0.64
COMMENT =	open source clone of Theme Hospital
PKGNAME =	corsixth-${V}
CATEGORIES =	games x11

GH_ACCOUNT =	CorsixTH
GH_PROJECT =	CorsixTH
GH_TAGNAME =	v${V}

HOMEPAGE =	https://corsixth.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer avcodec avformat
WANTLIB += avutil c freetype m swresample swscale ${MODLUA_WANTLIB}

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/lua
MODLUA_VERSION =	5.3

LIB_DEPENDS =	devel/sdl2-mixer \
		graphics/ffmpeg

RUN_DEPENDS =	audio/timidity \
		devel/desktop-file-utils \
		devel/lpeg,${MODLUA_FLAVOR} \
		devel/luafs,${MODLUA_FLAVOR} \
		x11/gtk+3,-guic

NO_TEST =	Yes

# Remove the .orig file
post-install:
	@rm -f ${PREFIX}/share/corsix-th/Lua/app.lua.orig

.include <bsd.port.mk>
