# $OpenBSD: Makefile,v 1.2 2013/11/27 05:14:13 brad Exp $

V =		2.0.0
COMMENT =	SDL2 multi-channel audio mixer library
DISTNAME =	SDL2_mixer-${V}
PKGNAME =	sdl2-mixer-${V}
REVISION =	0
CATEGORIES =	devel audio

SHARED_LIBS =	SDL2_mixer		0.0 # 0.0

HOMEPAGE =	http://www.libsdl.org/projects/SDL_mixer/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += FLAC SDL2 c m mikmod modplug ogg pthread sndio usbhid
WANTLIB += vorbis vorbisfile

MASTER_SITES =	http://www.libsdl.org/projects/SDL_mixer/release/

LIB_DEPENDS =	audio/flac \
		audio/libmikmod \
		audio/libmodplug \
		audio/libogg \
		audio/libvorbis \
		devel/sdl2
#		devel/smpeg2 needs to be imported for MP3 support

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-music-flac-shared \
			--disable-music-midi-fluidsynth \
			--disable-music-mod-modplug-shared \
			--disable-music-mp3 \
			--disable-music-mp3-smpeg-shared \
			--disable-music-ogg-shared \
			--enable-music-mod-mikmod \
			--disable-music-mod-mikmod-shared
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes

NO_TEST =	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/timidity/config.h

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/playmus ${PREFIX}/bin/play2mus
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/playwave ${PREFIX}/bin/play2wave

.include <bsd.port.mk>
