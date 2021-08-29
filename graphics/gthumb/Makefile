# $OpenBSD: Makefile,v 1.121 2021/08/29 09:56:34 jasper Exp $

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	3.10.4

CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo clutter-1.0 clutter-gtk-1.0
WANTLIB += exiv2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstreamer-1.0 gstvideo-1.0 gtk-3 intl jpeg
WANTLIB += json-glib-1.0 lcms2 m pango-1.0 pangocairo-1.0 png
WANTLIB += raw rsvg-2 secret-1 soup-2.4 tiff webkit2gtk-4.0 webp
WANTLIB += z

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base

# web albums
BUILD_DEPENDS +=	devel/bison

LIB_DEPENDS=	graphics/clutter/clutter-gtk  \
		graphics/exiv2 \
		graphics/libraw \
		graphics/libwebp \
		multimedia/gstreamer1/core \
		www/webkitgtk4 \
		x11/gnome/librsvg

RUN_DEPENDS=	graphics/dcraw \
		multimedia/gstreamer1/plugins-base

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

CONFIGURE_ARGS=	-Dlibbrasero=false

.include <bsd.port.mk>
