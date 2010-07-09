# $OpenBSD: Makefile,v 1.30 2010/07/09 09:20:53 sthen Exp $

COMMENT=	SDL image library

DISTNAME=	SDL_image-1.2.10
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel graphics
MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/ \
		http://www.libsdl.org/projects/SDL_image/release/

SHARED_LIBS=	SDL_image	3.0

HOMEPAGE=	http://www.libsdl.org/projects/SDL_image/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=	m sndio usbhid z

MODULES=	converters/libiconv
LIB_DEPENDS=	SDL::devel/sdl \
		png.>=2::graphics/png \
		tiff.>=35::graphics/tiff \
		jpeg.>=62.::graphics/jpeg

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-jpg-shared \
		--disable-png-shared \
		--disable-tif-shared
CONFIGURE_ENV+=	CPPFLAGS="-I${DEPBASE}/include/libpng -I${DEPBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib" \
		sdlconf_args=--prefix=${DEPBASE}

.include <bsd.port.mk>
