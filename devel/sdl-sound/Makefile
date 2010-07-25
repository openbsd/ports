# $OpenBSD: Makefile,v 1.16 2010/07/25 02:11:14 jolan Exp $

COMMENT=	library that handles the decoding of sound file formats

DISTNAME=	SDL_sound-1.0.3
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel audio
MASTER_SITES=	http://offload1.icculus.org/SDL_sound/downloads/

SHARED_LIBS=	SDL_sound	2.0

HOMEPAGE=	http://icculus.org/SDL_sound/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPLv2.1+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	c m ogg pthread sndio usbhid z

MODULES=	converters/libiconv
LIB_DEPENDS+=	physfs::devel/physfs \
		SDL.>=2.0::devel/sdl \
		smpeg.>=1.3::devel/smpeg \
		mikmod.>=2.4::audio/libmikmod \
		vorbis.>=2.0,vorbisfile.>=3.0::audio/libvorbis \
		FLAC.>=8::audio/flac \
		speex.>=2.2::audio/speex

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+=--disable-modplug
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include/smpeg -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
