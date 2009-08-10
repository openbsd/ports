# $OpenBSD: Makefile,v 1.4 2009/08/10 06:31:07 kili Exp $

COMMENT=	generic game engine library

VERSION=	0.1.2
DISTNAME=	flatzebra-${VERSION}
PKGNAME=	${DISTNAME}p1
SHARED_LIBS+=	flatzebra-0.1 1.0	# .2.0

CATEGORIES=	devel games

HOMEPAGE=	http://sarrazip.com/dev/afternoonstalker.html

MAINTAINER=	Serge Basterot <sb@wo-do.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xrandr Xrender m pthread-stubs sndio \
		usbhid xcb

MASTER_SITES=	http://sarrazip.com/dev/

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
