# $OpenBSD: Makefile,v 1.37 2015/06/06 04:49:47 bentley Exp $

COMMENT=	SDL cross-platform networking library

V=		1.2.8
DISTNAME=	SDL_net-${V}
PKGNAME=	sdl-net-${V}
REVISION=	2
CATEGORIES=	devel net
MASTER_SITES=	http://www.libsdl.org/projects/SDL_net/release/ \
		http://distcache.freebsd.org/ports-distfiles/

SHARED_LIBS=	SDL_net	2.0

HOMEPAGE=	http://www.libsdl.org/projects/SDL_net/

# Zlib
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL m pthread sndio usbhid

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-gui

.include <bsd.port.mk>
