# $OpenBSD: Makefile,v 1.43 2015/05/22 11:31:14 ajacoutot Exp $

COMMENT=	SDL TrueType fonts library

V=		2.0.11
DISTNAME=	SDL_ttf-${V}
PKGNAME=	sdl-ttf-${V}
REVISION=	1
CATEGORIES=	devel graphics fonts
MASTER_SITES=	http://www.libsdl.org/projects/SDL_ttf/release/

SHARED_LIBS=	SDL_ttf	8.1

HOMEPAGE=	http://www.libsdl.org/projects/SDL_ttf/

# Zlib
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL freetype m pthread sndio usbhid z

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
