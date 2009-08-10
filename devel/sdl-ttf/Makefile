# $OpenBSD: Makefile,v 1.33 2009/08/10 06:31:08 kili Exp $

COMMENT=	SDL TrueType fonts library

V=		2.0.9
DISTNAME=	SDL_ttf-${V}
PKGNAME=	sdl-ttf-${V}p0
SHARED_LIBS=	SDL_ttf 7.0
CATEGORIES=	devel graphics
MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		http://www.libsdl.org/projects/SDL_ttf/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_ttf/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		X11 Xau Xdmcp Xext Xrandr Xrender freetype iconv \
			m pthread-stubs sndio usbhid xcb z

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes
USE_LIBTOOL=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
