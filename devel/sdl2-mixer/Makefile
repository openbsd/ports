V =		2.8.0
COMMENT =	SDL2 multi-channel audio mixer library
DISTNAME =	SDL2_mixer-${V}
PKGNAME =	sdl2-mixer-${V}
REVISION =	1
CATEGORIES =	devel audio

SHARED_LIBS +=  SDL2_mixer		1.1	# 2.8.0

HOMEPAGE =	https://www.libsdl.org/projects/SDL_mixer/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 X11 Xcursor Xext Xfixes Xi Xrandr Xrender Xss
WANTLIB += c iconv m ogg opus opusfile pthread samplerate sndio
WANTLIB += usbhid xcb
# wavpack and xmp SO loaded via SDL_LoadObject, that is dlopen(3)
WANTLIB += wavpack xmp

SITES =		https://www.libsdl.org/projects/SDL_mixer/release/

LIB_DEPENDS =	audio/libxmp \
		audio/opusfile \
		audio/wavpack \
		converters/libiconv \
		devel/sdl2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-music-midi-fluidsynth \
			--disable-music-mod-modplug-shared \
			--disable-music-opus-shared

USE_GMAKE =	Yes

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/sdl2_mixer-config.cmake.in

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/playmus ${PREFIX}/bin/play2mus
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/playwave ${PREFIX}/bin/play2wave

.include <bsd.port.mk>
