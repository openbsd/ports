# $OpenBSD: Makefile,v 1.8 2018/01/12 19:32:54 bentley Exp $

V =		2.0.1
COMMENT =	SDL2 image library
DISTNAME =	SDL2_image-${V}
PKGNAME =	sdl2-image-${V}
CATEGORIES =	devel graphics
REVISION =	0

SHARED_LIBS +=	SDL2_image		0.0 # 0.0

HOMEPAGE =	https://www.libsdl.org/projects/SDL_image/

# zlib
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.libsdl.org/projects/SDL_image/release/

WANTLIB += SDL2 jpeg m png pthread sndio tiff usbhid webp z

LIB_DEPENDS =	devel/sdl2 \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-jpg-shared \
			--disable-png-shared \
			--disable-tif-shared \
			--disable-webp-shared
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			OBJC="${CC}"

.include <bsd.port.mk>
