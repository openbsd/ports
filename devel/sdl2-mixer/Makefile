# $OpenBSD: Makefile,v 1.12 2019/07/12 21:07:45 sthen Exp $

V =		2.0.4
COMMENT =	SDL2 multi-channel audio mixer library
DISTNAME =	SDL2_mixer-${V}
PKGNAME =	sdl2-mixer-${V}
CATEGORIES =	devel audio

SHARED_LIBS +=  SDL2_mixer		0.1	# 2.2

HOMEPAGE =	https://www.libsdl.org/projects/SDL_mixer/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += FLAC SDL2 c m mikmod modplug ogg opus opusfile pthread sndio usbhid
WANTLIB += vorbis vorbisfile samplerate mpg123

MASTER_SITES =	https://www.libsdl.org/projects/SDL_mixer/release/

LIB_DEPENDS =	audio/flac \
		audio/libmikmod \
		audio/libmodplug \
		audio/libogg \
		audio/libvorbis \
		audio/mpg123 \
		audio/opusfile \
		devel/sdl2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-music-flac-shared \
			--disable-music-midi-fluidsynth \
			--disable-music-mod-modplug-shared \
			--disable-music-ogg-shared \
			--enable-music-mod-mikmod \
			--disable-music-mod-mikmod-shared
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libmodplug" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes

NO_TEST =	Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/timidity/options.h

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/playmus ${PREFIX}/bin/play2mus
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/playwave ${PREFIX}/bin/play2wave

.include <bsd.port.mk>
