# $OpenBSD: Makefile,v 1.10 2003/11/21 21:02:57 sturm Exp $

COMMENT=	"X11 game engine library"

VERSION=	4.1
DISTNAME=	gengameng-${VERSION}
CATEGORIES=	devel x11

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_image::devel/sdl-image

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	c++

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
