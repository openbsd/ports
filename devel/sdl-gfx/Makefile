# $OpenBSD: Makefile,v 1.15 2009/08/10 06:31:08 kili Exp $

COMMENT=	primitives drawing/other support functions for SDL
DISTNAME=	SDL_gfx-2.0.13
PKGNAME=	${DISTNAME:L:S/_/-/}p3
SHARED_LIBS=	SDL_gfx 13.0
CATEGORIES=	devel graphics x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ferzkopp.net/Software/SDL_gfx-2.0/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xrandr Xrender iconv m pthread-stubs sndio \
		usbhid xcb

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

LIB_DEPENDS=	SDL::devel/sdl

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+=--disable-mmx
.endif

.include <bsd.port.mk>
