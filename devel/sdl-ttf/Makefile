# $OpenBSD: Makefile,v 1.38 2012/03/29 13:38:30 sthen Exp $

COMMENT=	SDL TrueType fonts library

V=		2.0.10
DISTNAME=	SDL_ttf-${V}
PKGNAME=	sdl-ttf-${V}
CATEGORIES=	devel graphics fonts
MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		http://www.libsdl.org/projects/SDL_ttf/release/

SHARED_LIBS=	SDL_ttf	8.0

HOMEPAGE=	http://www.libsdl.org/projects/SDL_ttf/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=	SDL freetype m sndio usbhid z

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
