# $OpenBSD: Makefile,v 1.18 2006/01/06 08:36:18 steven Exp $

COMMENT=	"SDL image library"
DISTNAME=	SDL_image-1.2.4
PKGNAME=	${DISTNAME:L:S/_/-/}
SHARED_LIBS=	SDL_image 1.3
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.libsdl.org/projects/SDL_image/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_image/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FAKE=		lib
USE_LIBTOOL=	Yes
USE_X11=	Yes

LIB_DEPENDS=	SDL.::devel/sdl \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		jpeg.62.::graphics/jpeg

WANTLIB=	X11 Xext m usbhid z

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-tif \
		${CONFIGURE_SHARED}
CONFIGURE_ENV+=	CPPFLAGS="-I${DEPBASE}/include -I${DEPBASE}/include/libpng" \
		LDFLAGS="-L${X11BASE}/lib" \
		sdlconf_args=--prefix=${DEPBASE}

.include <bsd.port.mk>
