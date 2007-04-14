# $OpenBSD: Makefile,v 1.28 2007/04/14 21:20:19 sturm Exp $

COMMENT=	"SDL TrueType fonts library"

V=		2.0.8
DISTNAME=	SDL_ttf-${V}
PKGNAME=	sdl-ttf-${V}p2
SHARED_LIBS=	SDL_ttf 7.0
CATEGORIES=	devel graphics
MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		http://www.libsdl.org/projects/SDL_ttf/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_ttf/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xau Xdmcp Xext freetype usbhid m z

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes
USE_LIBTOOL=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
