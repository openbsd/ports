# $OpenBSD: Makefile,v 1.22 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT=	primitives drawing/other support functions for SDL

DISTNAME=	SDL_gfx-2.0.23
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel graphics x11
MASTER_SITES=	http://www.ferzkopp.net/Software/SDL_gfx-2.0/

SHARED_LIBS=	SDL_gfx	14.2

HOMEPAGE=	http://www.ferzkopp.net/joomla/content/view/19/14/

# Zlib
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL m sndio usbhid

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-mmx
.endif

.include <bsd.port.mk>
