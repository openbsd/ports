# $OpenBSD: Makefile,v 1.124 2022/01/13 08:06:39 ajacoutot Exp $

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	3.12.0
REVISION=	1

CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c cairo clutter-1.0 clutter-gtk-1.0
WANTLIB += exiv2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstreamer-1.0 gstvideo-1.0 gtk-3 heif intl
WANTLIB += jpeg lcms2 m pango-1.0 pangocairo-1.0 png raw rsvg-2
WANTLIB += secret-1 soup-2.4 tiff webkit2gtk-4.0 webp z

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
		multimedia/libheif \
		www/webkitgtk4 \
		x11/gnome/librsvg

RUN_DEPENDS=	graphics/dcraw \
		multimedia/gstreamer1/plugins-base

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

CONFIGURE_ARGS=	-Dlibbrasero=false

.include <bsd.port.mk>
