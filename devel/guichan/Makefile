# $OpenBSD: Makefile,v 1.7 2012/09/25 22:05:22 brad Exp $

COMMENT=	C++ GUI library designed for games

DISTNAME=	guichan-0.8.1
REVISION=	2
CATEGORIES=	devel games

HOMEPAGE=	http://guichan.sourceforge.net/

MAINTAINER=	Jonathan Armani <armani@openbsd.org>

SHARED_LIBS +=	guichan_opengl	0.0	# .1.0
SHARED_LIBS +=	guichan_sdl	0.0	# .1.0
SHARED_LIBS +=	guichan		0.0	# .1.0

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://guichan.googlecode.com/files/

WANTLIB += SDL m sndio stdc++ usbhid 

MODULES=	converters/libiconv

BUILD_DEPENDS=	devel/sdl-image
LIB_DEPENDS=	devel/sdl

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-allegro=no

.include <bsd.port.mk>
