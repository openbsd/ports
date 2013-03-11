# $OpenBSD: Makefile,v 1.34 2013/03/11 10:50:30 espie Exp $

COMMENT=	SDL image library

DISTNAME=	SDL_image-1.2.12
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel graphics
MASTER_SITES=	${HOMEPAGE}release/

SHARED_LIBS=	SDL_image	3.1

HOMEPAGE=	http://www.libsdl.org/projects/SDL_image/

# Zlib
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL jpeg m png sndio tiff usbhid webp z

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-jpg-shared \
		--disable-png-shared \
		--disable-tif-shared \
		--disable-webp-shared
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
