COMMENT =	SDL3 image library

V =		3.4.0
DISTNAME =	SDL3_image-${V}
PKGNAME =	${DISTNAME:L:S/_/-/g}

SHARED_LIBS +=  SDL3_image                0.0

CATEGORIES =	devel graphics
HOMEPAGE =	https://github.com/libsdl-org/SDL_image/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE = Yes

WANTLIB += SDL3

# dlopen(3)'d libraries
WANTLIB += avif png tiff webp webpdemux webpmux z

SITES =		https://github.com/libsdl-org/SDL_image/releases/download/release-${V}/

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl3 \
		graphics/libavif \
		graphics/png \
		graphics/tiff \
		graphics/libwebp

.include <bsd.port.mk>
