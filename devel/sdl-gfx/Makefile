# $OpenBSD: Makefile,v 1.16 2010/07/25 02:01:47 jolan Exp $

COMMENT=	primitives drawing/other support functions for SDL

DISTNAME=	SDL_gfx-2.0.21
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel graphics x11
MASTER_SITES=	http://www.ferzkopp.net/Software/SDL_gfx-2.0/

SHARED_LIBS=	SDL_gfx	14.0

HOMEPAGE=	http://www.ferzkopp.net/joomla/content/view/19/14/

# LGPLv2.1
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	m sndio usbhid

MODULES=	converters/libiconv
LIB_DEPENDS=	SDL::devel/sdl

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-mmx
.endif

.include <bsd.port.mk>
