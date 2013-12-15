# $OpenBSD: Makefile,v 1.46 2013/12/15 03:10:18 brad Exp $

COMMENT=	SDL multi-channel audio mixer library

DISTNAME=	SDL_mixer-1.2.12
PKGNAME=	${DISTNAME:L:S/_/-/}
REVISION=	2
CATEGORIES=	devel audio
MASTER_SITES=	${HOMEPAGE}release/

SHARED_LIBS=	SDL_mixer	5.0

HOMEPAGE=	http://www.libsdl.org/projects/SDL_mixer/

# Zlib
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	FLAC SDL c m mikmod ogg pthread smpeg>=1 sndio \
		usbhid vorbis vorbisfile

MODULES=	converters/libiconv
LIB_DEPENDS=	audio/flac \
		audio/libmikmod \
		audio/libogg \
		audio/libvorbis \
		devel/sdl \
		devel/smpeg

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-music-flac-shared \
		--disable-music-fluidsynth-midi \
		--disable-music-mod-shared \
		--disable-music-mp3-shared \
		--disable-music-ogg-shared
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/timidity/config.h

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/play{mus,wave} ${PREFIX}/bin

.include <bsd.port.mk>
