# $OpenBSD: Makefile,v 1.16 2016/09/13 14:40:29 naddy Exp $

COMMENT=	generic game engine library

VERSION =	0.1.6
DISTNAME=	flatzebra-${VERSION}
REVISION=	0

SHARED_LIBS +=	flatzebra-0.1 2.0	# .2.0

CATEGORIES=	devel games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC SDL SDL_image SDL_mixer iconv jpeg m mikmod ogg png
WANTLIB += smpeg sndio stdc++ tiff usbhid vorbis vorbisfile z
WANTLIB += pthread webp

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	converters/libiconv \
		devel/sdl-image \
		devel/sdl-mixer

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
