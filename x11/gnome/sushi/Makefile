# $OpenBSD: Makefile,v 1.63 2021/10/25 11:28:25 ajacoutot Exp $

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	41.0

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += cairo epoxy evdocument3 freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gstaudio-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 gtk-3 harfbuzz pango-1.0 pangocairo-1.0

MODULES=	devel/meson \
		x11/gnome

LIB_DEPENDS=	evince-*-!light:graphics/evince

BUILD_DEPENDS=	www/webkitgtk4 \
		x11/gnome/gjs \
		x11/gtksourceview4

RUN_DEPENDS=	devel/libsoup \
		www/webkitgtk4 \
		x11/gnome/gjs \
		x11/gtksourceview4

CONFIGURE_ARGS=	-Dwayland=disabled

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
