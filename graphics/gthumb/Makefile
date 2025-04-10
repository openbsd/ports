COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	3.12.7

CATEGORIES=	graphics

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c cairo clutter-1.0 clutter-gtk-1.0
WANTLIB += exiv2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstreamer-1.0 gstvideo-1.0 gtk-3 heif intl
WANTLIB += jpeg jxl jxl_threads lcms2 m pango-1.0 pangocairo-1.0 png
WANTLIB += raw rsvg-2 secret-1 soup-2.4 tiff webkit2gtk-4.0 webp
WANTLIB += webpdemux z

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS=		devel/appstream \
			multimedia/gstreamer1/plugins-base

# web albums
BUILD_DEPENDS +=	devel/bison

LIB_DEPENDS=	graphics/clutter/clutter-gtk  \
		graphics/exiv2 \
		graphics/libjxl \
		graphics/libraw \
		graphics/libwebp \
		multimedia/gstreamer1/core \
		multimedia/libheif \
		www/webkitgtk4 \
		x11/gnome/librsvg

RUN_DEPENDS=	graphics/dcraw \
		multimedia/gstreamer1/plugins-base

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

CONFIGURE_ARGS=	-Dlibbrasero=false \
		-Dcolord=false

.include <bsd.port.mk>
