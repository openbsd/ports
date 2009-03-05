# $OpenBSD: Makefile,v 1.2 2009/03/05 07:41:51 ajacoutot Exp $

COMMENT=	generic game engine library

VERSION=	0.1.2
DISTNAME=	flatzebra-${VERSION}
SHARED_LIBS+=	flatzebra-0.1 1.0	# .2.0

CATEGORIES=	devel games

HOMEPAGE=	http://perso.b2b2c.ca/sarrazip/dev/afternoonstalker.html

MAINTAINER=	Serge Basterot <sb@wo-do.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xrandr Xrender m usbhid sndio

MASTER_SITES=	http://perso.b2b2c.ca/sarrazip/dev/

LIB_DEPENDS=	SDL.>=8::devel/sdl
RUN_DEPENDS=	::devel/sdl-image \
		::devel/sdl-mixer
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	converters/libiconv
USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
