COMMENT =	image display utility for Wayland

GH_ACCOUNT =	artemsen
GH_PROJECT =	swayimg
GH_TAGNAME =	v3.1

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson

WANTLIB =	OpenEXRCore-3_2 avif cairo epoll-shim exif fontconfig freetype
WANTLIB +=	gif gobject-2.0 heif jpeg json-c jxl png rsvg-2 tiff
WANTLIB +=	wayland-client webp webpdemux xkbcommon
WANTLIB +=	pthread c

CONFIGURE_ENV = CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib -pthread"

LIB_DEPENDS =	devel/epoll-shim \
		devel/json-c \
		graphics/cairo \
		graphics/giflib \
		graphics/jpeg \
		graphics/libavif \
		graphics/libexif \
		graphics/libjxl \
		graphics/libwebp \
		graphics/openexr \
		graphics/png \
		graphics/tiff \
		multimedia/libheif \
		wayland/wayland \
		x11/gnome/librsvg \
		x11/xkbcommon

BUILD_DEPENDS =	wayland/wayland-protocols \
		shells/bash-completion

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
