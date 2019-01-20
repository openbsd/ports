# $OpenBSD: Makefile,v 1.11 2019/01/20 23:37:36 thfr Exp $

V =		2.0.4
COMMENT =	SDL2 image library
DISTNAME =	SDL2_image-${V}
PKGNAME =	sdl2-image-${V}
CATEGORIES =	devel graphics

SHARED_LIBS +=	SDL2_image		0.1 # 0.4

HOMEPAGE =	https://www.libsdl.org/projects/SDL_image/

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.libsdl.org/projects/SDL_image/release/

WANTLIB += SDL2 jpeg m png16 pthread sndio tiff usbhid webp z samplerate

LIB_DEPENDS =	devel/sdl2>=2.0.8 \
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
