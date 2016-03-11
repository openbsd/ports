# $OpenBSD: Makefile,v 1.39 2016/03/11 20:28:24 naddy Exp $

COMMENT=	SDL image library

DISTNAME=	SDL_image-1.2.12
PKGNAME=	${DISTNAME:L:S/_/-/}
REVISION=	2
CATEGORIES=	devel graphics
MASTER_SITES=	${HOMEPAGE}release/

SHARED_LIBS=	SDL_image	3.1

HOMEPAGE=	http://www.libsdl.org/projects/SDL_image/

# Zlib
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL jpeg m png pthread sndio tiff usbhid webp z

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-jpg-shared \
		--disable-png-shared \
		--disable-tif-shared \
		--disable-webp-shared
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
