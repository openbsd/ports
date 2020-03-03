# $OpenBSD: Makefile,v 1.23 2020/03/03 20:09:51 bcallah Exp $

COMMENT=	generic game engine library

VERSION =	0.1.7
DISTNAME=	flatzebra-${VERSION}
REVISION=	0

SHARED_LIBS +=	flatzebra-0.1 2.0	# .2.0

CATEGORIES=	devel games

HOMEPAGE=	https://perso.b2b2c.ca/~sarrazip/dev/afternoonstalker.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC SDL SDL_image SDL_mixer iconv jpeg m mikmod ogg png
WANTLIB += smpeg sndio ${COMPILER_LIBCXX} tiff usbhid vorbis vorbisfile z
WANTLIB += pthread webp

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://perso.b2b2c.ca/~sarrazip/dev/

LIB_DEPENDS=	converters/libiconv \
		devel/sdl-image \
		devel/sdl-mixer

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
