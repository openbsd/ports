# needs rust version of rsvg
ONLY_FOR_ARCHS =	${RUST_ARCHS}

COMMENT =	image display utility for Wayland

GH_ACCOUNT =	artemsen
GH_PROJECT =	swayimg
GH_TAGNAME =	v4.6

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson

WANTLIB =	OpenEXRCore-3_4 avif cairo epoll-shim exif fontconfig freetype
WANTLIB +=	gif gobject-2.0 heif jpeg json-c jxl png raw rsvg-2 sixel tiff
WANTLIB +=	wayland-client webp webpdemux xkbcommon
WANTLIB +=	lib/inotify/inotify drm pthread c m

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

LIB_DEPENDS =	devel/epoll-shim \
		devel/json-c \
		devel/libinotify \
		graphics/cairo \
		graphics/giflib \
		graphics/jpeg \
		graphics/libavif \
		graphics/libexif \
		graphics/libjxl \
		graphics/libraw \
		graphics/libsixel \
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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build

.include <bsd.port.mk>
