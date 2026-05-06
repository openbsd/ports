# needs rust version of rsvg
ONLY_FOR_ARCHS =	${RUST_ARCHS}

COMMENT =	image display utility for Wayland

GH_ACCOUNT =	artemsen
GH_PROJECT =	swayimg
GH_TAGNAME =	v5.2

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson

WANTLIB += ${COMPILER_LIBCXX} Imath-3_2 OpenEXR-3_4 avif c cairo
WANTLIB += drm epoll-shim exiv2 fontconfig freetype gif gobject-2.0
WANTLIB += heif jpeg jxl jxl_threads luajit-5.1 m png raw rsvg-2
WANTLIB += sixel tiff wayland-client webp webpdemux xkbcommon
WANTLIB += lib/inotify/inotify

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

LIB_DEPENDS =	devel/epoll-shim \
		devel/libinotify \
		graphics/cairo \
		graphics/exiv2 \
		graphics/giflib \
		graphics/jpeg \
		graphics/libavif \
		graphics/libjxl \
		graphics/libraw \
		graphics/libsixel \
		graphics/libwebp \
		graphics/openexr \
		graphics/png \
		graphics/tiff \
		lang/luajit \
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
