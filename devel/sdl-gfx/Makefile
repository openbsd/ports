# $OpenBSD: Makefile,v 1.19 2010/12/19 23:37:10 jasper Exp $

COMMENT=	primitives drawing/other support functions for SDL

DISTNAME=	SDL_gfx-2.0.22
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel graphics x11
MASTER_SITES=	http://www.ferzkopp.net/Software/SDL_gfx-2.0/

SHARED_LIBS=	SDL_gfx	14.1

HOMEPAGE=	http://www.ferzkopp.net/joomla/content/view/19/14/

# LGPLv2.1
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	SDL m sndio usbhid

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-mmx
.endif

.include <bsd.port.mk>
