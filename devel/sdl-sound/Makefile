# $OpenBSD: Makefile,v 1.1.1.1 2003/10/27 03:07:33 jolan Exp $

COMMENT=	"library that handles the decoding of sound file formats"
DISTNAME=	SDL_sound-1.0.1
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel audio
MASTER_SITES=	${HOMEPAGE}downloads/

HOMEPAGE=	http://icculus.org/SDL_sound/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS+=	physfs.9.0::devel/physfs \
		SDL.2.0::devel/sdl \
		smpeg.1.3::devel/smpeg \
		mikmod.2.4::audio/libmikmod \
		vorbis.2.0,vorbisenc.2.0,vorbisfile.3.0::audio/libvorbis

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-flac --disable-modplug --disable-speex
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
