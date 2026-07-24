V =		0.70.0
COMMENT =	open source clone of Theme Hospital
PKGNAME =	corsixth-${V}
CATEGORIES =	games x11

GH_ACCOUNT =	CorsixTH
GH_PROJECT =	CorsixTH
GH_TAGNAME =	v${V}

HOMEPAGE =	https://corsixth.com/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer avcodec avformat
WANTLIB += avutil c freetype m png swresample swscale z ${MODLUA_WANTLIB}

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/lua

# Lua 5.2 and 5.3 are deprecated for corsixth
# update to Lua 5.4 when this is supported by devel/lpeg
MODLUA_VERSION = 5.3

LIB_DEPENDS =	devel/sdl2-mixer \
		graphics/ffmpeg

RUN_DEPENDS =	audio/timidity \
		devel/desktop-file-utils \
		devel/lpeg,${MODLUA_FLAVOR} \
		devel/luafs,${MODLUA_FLAVOR} \
		x11/gtk+4,-guic

CONFIGURE_ARGS = -DWITH_MIDI_DEVICE=OFF \
		-DWITH_UPDATE_CHECK=OFF

NO_TEST =	Yes

.include <bsd.port.mk>
