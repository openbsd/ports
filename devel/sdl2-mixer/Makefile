V =		2.6.3
COMMENT =	SDL2 multi-channel audio mixer library
DISTNAME =	SDL2_mixer-${V}
PKGNAME =	sdl2-mixer-${V}
CATEGORIES =	devel audio

SHARED_LIBS +=  SDL2_mixer		1.0	# 2.2

HOMEPAGE =	https://www.libsdl.org/projects/SDL_mixer/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 X11 Xcursor Xext Xfixes Xi Xrandr Xrender Xss
WANTLIB += c m modplug ogg opus opusfile pthread samplerate sndio
WANTLIB += usbhid xcb

SITES =		https://www.libsdl.org/projects/SDL_mixer/release/

LIB_DEPENDS =	audio/libmodplug \
		audio/opusfile \
		devel/sdl2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-music-midi-fluidsynth \
			--disable-music-mod-modplug-shared \
			--disable-music-opus-shared

USE_GMAKE =	Yes

NO_TEST =	Yes

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/playmus ${PREFIX}/bin/play2mus
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/playwave ${PREFIX}/bin/play2wave

.include <bsd.port.mk>
