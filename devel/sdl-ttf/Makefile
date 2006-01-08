# $OpenBSD: Makefile,v 1.20 2006/01/08 03:02:09 brad Exp $

COMMENT=	"SDL TrueType fonts library"

DISTNAME=	SDL_ttf-2.0.6
PKGNAME=	${DISTNAME:L:S/_/-/}p0
SHARED_LIBS=	SDL_ttf 6.0
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.libsdl.org/projects/SDL_ttf/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_ttf/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext freetype usbhid

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes
USE_LIBTOOL=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
