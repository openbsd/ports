# $OpenBSD: Makefile,v 1.23 2006/10/18 18:40:27 pvalchev Exp $

COMMENT=	"SDL TrueType fonts library"

DISTNAME=	SDL_ttf-2.0.6
PKGNAME=	${DISTNAME:L:S/_/-/}p3
SHARED_LIBS=	SDL_ttf 7.0
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.libsdl.org/projects/SDL_ttf/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_ttf/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xrandr Xrender freetype usbhid m iconv

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes
USE_LIBTOOL=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
