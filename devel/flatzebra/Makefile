# $OpenBSD: Makefile,v 1.14 2015/05/22 11:31:12 ajacoutot Exp $

COMMENT=	generic game engine library

VERSION =	0.1.6
DISTNAME=	flatzebra-${VERSION}
REVISION=	0

SHARED_LIBS +=	flatzebra-0.1 2.0	# .2.0

CATEGORIES=	devel games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC SDL SDL_image SDL_mixer jpeg m mikmod ogg png
WANTLIB += smpeg sndio stdc++ tiff usbhid vorbis vorbisfile z
WANTLIB += pthread webp

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

MODULES=	converters/libiconv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
