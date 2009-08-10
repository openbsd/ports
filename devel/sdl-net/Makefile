# $OpenBSD: Makefile,v 1.27 2009/08/10 06:31:08 kili Exp $

COMMENT=	SDL cross-platform networking library

V=		1.2.7
DISTNAME=	SDL_net-${V}
PKGNAME=	sdl-net-${V}p1
SHARED_LIBS=	SDL_net 1.1 # .0.7
CATEGORIES=	devel net

MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		http://www.libsdl.org/projects/SDL_net/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_net/

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdmcp Xext Xrandr Xrender iconv m pthread-stubs sndio \
		usbhid xcb

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes
USE_LIBTOOL=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	--disable-gui \
			${CONFIGURE_SHARED}

.include <bsd.port.mk>
