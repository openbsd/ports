# $OpenBSD: Makefile,v 1.39 2010/09/02 18:34:28 ajacoutot Exp $

COMMENT=	SDL multi-channel audio mixer library

DISTNAME=	SDL_mixer-1.2.11
PKGNAME=	${DISTNAME:L:S/_/-/}
REVISION=	0
CATEGORIES=	devel audio
MASTER_SITES=	${HOMEPAGE}release/

SHARED_LIBS=	SDL_mixer	4.0

HOMEPAGE=	http://www.libsdl.org/projects/SDL_mixer/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	FLAC SDL c m mikmod ogg pthread smpeg.>=1 sndio \
		usbhid vorbis vorbisfile

MODULES=	converters/libiconv
LIB_DEPENDS=	::audio/flac \
		::audio/libmikmod \
		::audio/libvorbis \
		::devel/sdl \
		::devel/smpeg

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-music-flac-shared \
		--disable-music-mod-shared \
		--disable-music-mp3-shared \
		--disable-music-ogg-shared
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	${SUBST_CMD} ${WRKSRC}/timidity/config.h

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/.libs/play{mus,wave} ${PREFIX}/bin

.include <bsd.port.mk>
