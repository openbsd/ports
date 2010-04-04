# $OpenBSD: Makefile,v 1.5 2010/04/04 15:34:54 ajacoutot Exp $

COMMENT=	generic game engine library

VERSION=	0.1.4
DISTNAME=	flatzebra-${VERSION}
SHARED_LIBS+=	flatzebra-0.1 1.0	# .2.0

CATEGORIES=	devel games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

MAINTAINER=	Serge Basterot <sb@wo-do.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += SDL X11 Xau Xdmcp Xext Xrandr Xrender jpeg m mikmod
WANTLIB += ogg png pthread-stubs smpeg sndio tiff usbhid vorbis
WANTLIB += vorbisfile xcb z

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	SDL_image.>=2::devel/sdl-image \
		SDL_mixer.>=3::devel/sdl-mixer

MODULES=	converters/libiconv
USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
