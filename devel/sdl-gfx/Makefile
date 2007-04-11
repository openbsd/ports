# $OpenBSD: Makefile,v 1.10 2007/04/11 00:39:36 msf Exp $

COMMENT=	"primitives drawing/other support functions for SDL"
DISTNAME=	SDL_gfx-2.0.13
PKGNAME=	${DISTNAME:L:S/_/-/}
SHARED_LIBS=	SDL_gfx 13.0
CATEGORIES=	devel graphics x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ferzkopp.net/Software/SDL_gfx-2.0/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	m usbhid X11 Xext

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
