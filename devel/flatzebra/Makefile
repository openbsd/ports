# $OpenBSD: Makefile,v 1.10 2011/07/08 22:38:08 ajacoutot Exp $

COMMENT=	generic game engine library

VERSION=	0.1.5
DISTNAME=	flatzebra-${VERSION}

SHARED_LIBS+=	flatzebra-0.1 1.0	# .2.0

CATEGORIES=	devel games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += FLAC SDL SDL_image SDL_mixer jpeg m mikmod ogg png
WANTLIB += smpeg sndio stdc++ tiff usbhid vorbis vorbisfile z

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

MODULES=	converters/libiconv
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
