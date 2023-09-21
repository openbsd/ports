V =		2.6.3
COMMENT =	SDL2 image library
DISTNAME =	SDL2_image-${V}
PKGNAME =	sdl2-image-${V}
CATEGORIES =	devel graphics

SHARED_LIBS +=	SDL2_image		1.0 # 2.6.3

HOMEPAGE =	https://www.libsdl.org/projects/SDL_image/

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 X11 Xcursor Xext Xfixes Xi Xrandr Xrender
WANTLIB += Xss aom avif brotlicommon brotlidec brotlienc dav1d hwy jpeg jxl
WANTLIB += lcms2 lzma m pthread samplerate sndio tiff usbhid webp xcb z zstd

SITES =		https://www.libsdl.org/projects/SDL_image/release/

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	archivers/brotli \
		devel/highway \
		devel/sdl2 \
		graphics/lcms2 \
		graphics/libavif \
		graphics/libjxl \
		graphics/libwebp \
		graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-avif-shared \
			--disable-tif-shared \
			--disable-webp-shared
CONFIGURE_ENV +=	OBJC="${CC}"

.include <bsd.port.mk>
