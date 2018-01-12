# $OpenBSD: Makefile,v 1.40 2018/01/12 19:32:54 bentley Exp $

COMMENT=	SDL cross-platform networking library

V=		1.2.8
DISTNAME=	SDL_net-${V}
PKGNAME=	sdl-net-${V}
REVISION=	4
CATEGORIES=	devel net
MASTER_SITES=	https://www.libsdl.org/projects/SDL_net/release/ \
		http://distcache.freebsd.org/ports-distfiles/

SHARED_LIBS=	SDL_net	2.0

HOMEPAGE=	https://www.libsdl.org/projects/SDL_net/

# Zlib
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL iconv m pthread sndio usbhid

LIB_DEPENDS=	devel/sdl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--disable-gui

.include <bsd.port.mk>
