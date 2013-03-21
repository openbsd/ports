# $OpenBSD: Makefile,v 1.22 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT=	library that handles the decoding of sound file formats

DISTNAME=	SDL_sound-1.0.3
PKGNAME=	${DISTNAME:L:S/_/-/}
REVISION=	1
CATEGORIES=	devel audio
MASTER_SITES=	http://offload1.icculus.org/SDL_sound/downloads/

SHARED_LIBS=	SDL_sound	2.0

HOMEPAGE=	http://icculus.org/SDL_sound/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	FLAC SDL c m mikmod ogg pthread physfs \
		smpeg speex sndio usbhid vorbis \
		vorbisfile z

MODULES=	converters/libiconv
LIB_DEPENDS+=	audio/flac \
		audio/libmikmod \
		audio/libvorbis \
		audio/speex \
		devel/physfs \
		devel/sdl \
		devel/smpeg

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+=--disable-modplug
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include/smpeg -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
