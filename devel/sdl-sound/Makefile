# $OpenBSD: Makefile,v 1.15 2009/08/10 06:31:08 kili Exp $

COMMENT=	library that handles the decoding of sound file formats
DISTNAME=	SDL_sound-1.0.1
PKGNAME=	${DISTNAME:L:S/_/-/}p8
SHARED_LIBS=	SDL_sound 2.0
CATEGORIES=	devel audio
MASTER_SITES=	http://offload1.icculus.org/SDL_sound/downloads/

HOMEPAGE=	http://icculus.org/SDL_sound/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xrandr Xrender c iconv m ogg \
			pthread pthread-stubs sndio usbhid xcb z

LIB_DEPENDS+=	physfs::devel/physfs \
		SDL.>=2.0::devel/sdl \
		smpeg.>=1.3::devel/smpeg \
		mikmod.>=2.4::audio/libmikmod \
		vorbis.>=2.0,vorbisenc.>=2.0,vorbisfile.>=3.0::audio/libvorbis \
		FLAC.>=8::audio/flac \
		speex.>=2.2::audio/speex

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-modplug
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
