# /pobj/furnace-0.6.3/furnace-0.6.3/extern/ESFMu/esfm.c:1855:5: error: inline assembly requires more registers than available
#                               "movzbl  %b[wave], %%eax             \n\t"
#                               ^
BROKEN-i386 =	asm tries to use %eax which is not available

COMMENT =	multi-system chiptune tracker

DIST_TUPLE =	github tildearrow furnace v0.6.8.3 .
DIST_TUPLE +=	github superctr adpcm 7736b178f4fb722d594c6ebdfc1ddf1af2ec81f7 extern/adpcm

CATEGORIES =	audio

HOMEPAGE =	https://github.com/tildearrow/furnace

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL SDL2 c execinfo fftw3 fmt freetype
WANTLIB +=	intl m portaudio sndfile z

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	audio/jack

RUN_DEPENDS =	audio/jack \
		devel/desktop-file-utils \
		x11/gnome/zenity \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/libsndfile \
		audio/portaudio-svn \
		devel/fmt \
		devel/sdl2 \
		math/fftw3

CONFIGURE_ARGS =	-DUSE_RTMIDI=OFF \
			-DSYSTEM_FMT=ON \
			-DSYSTEM_FFTW=ON \
			-DSYSTEM_FREETYPE=ON \
			-DSYSTEM_LIBSNDFILE=ON \
			-DSYSTEM_PORTAUDIO=ON \
			-DSYSTEM_SDL2=ON \
			-DSYSTEM_ZLIB=ON \
			-DWITH_RENDER_OPENGL=OFF

NO_TEST =	Yes

.include <bsd.port.mk>
