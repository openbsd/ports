# $OpenBSD: Makefile,v 1.33 2013/03/11 10:50:30 espie Exp $

COMMENT=	SDL cross-platform networking library

V=		1.2.8
DISTNAME=	SDL_net-${V}
PKGNAME=	sdl-net-${V}
REVISION=	0
CATEGORIES=	devel net
MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		http://www.libsdl.org/projects/SDL_net/release/

SHARED_LIBS=	SDL_net	2.0

HOMEPAGE=	http://www.libsdl.org/projects/SDL_net/

# Zlib
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL m sndio usbhid

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-gui

.include <bsd.port.mk>
