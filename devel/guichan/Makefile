# $OpenBSD: Makefile,v 1.1.1.1 2008/08/22 11:38:25 ajacoutot Exp $

COMMENT=	C++ GUI library designed for games

DISTNAME=	guichan-0.8.1
CATEGORIES=	devel games

HOMEPAGE=	http://guichan.sourceforge.net/

MAINTAINER=	Jonathan Armani <dbd@asystant.net>

SHARED_LIBS +=	guichan_opengl	0.0	# .1.0
SHARED_LIBS +=	guichan_sdl	0.0	# .1.0
SHARED_LIBS +=	guichan		0.0	# .1.0

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://guichan.googlecode.com/files/

WANTLIB=	X11 Xau Xdmcp Xext Xrandr Xrender iconv m usbhid

MODULES=	converters/libiconv

BUILD_DEPENDS=	::devel/sdl-image
LIB_DEPENDS=	SDL.>=8::devel/sdl

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="`sdl-config --cflags`" \
		LDFLAGS="`sdl-config --libs`"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-allegro=no

.include <bsd.port.mk>
