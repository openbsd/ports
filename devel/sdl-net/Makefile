# $OpenBSD: Makefile,v 1.28 2010/09/02 07:09:07 ajacoutot Exp $

COMMENT=	SDL cross-platform networking library

V=		1.2.7
DISTNAME=	SDL_net-${V}
PKGNAME=	sdl-net-${V}
REVISION=	2
CATEGORIES=	devel net
MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		http://www.libsdl.org/projects/SDL_net/release/

SHARED_LIBS=	SDL_net	1.1

HOMEPAGE=	http://www.libsdl.org/projects/SDL_net/

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=	SDL m sndio usbhid

MODULES=	converters/libiconv
LIB_DEPENDS=	::devel/sdl

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-gui

.include <bsd.port.mk>
