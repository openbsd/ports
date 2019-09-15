# $OpenBSD: Makefile,v 1.113 2019/09/15 13:04:42 ajacoutot Exp $

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	3.8.1

CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo clutter-1.0 clutter-gtk-1.0
WANTLIB += colord exiv2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstreamer-1.0 gstvideo-1.0
WANTLIB += gtk-3 intl jpeg json-glib-1.0 lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += png raw rsvg-2 secret-1 soup-2.4 tiff webkit2gtk-4.0
WANTLIB += webp z

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base

# web albums
BUILD_DEPENDS +=	devel/bison

LIB_DEPENDS=	graphics/clutter/clutter-gtk  \
		graphics/colord \
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
