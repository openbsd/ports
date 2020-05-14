# $OpenBSD: Makefile,v 1.60 2020/05/14 16:03:08 ajacoutot Exp $

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.34.0
REVISION=	0

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += cairo epoxy evdocument3 freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gstaudio-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 gtk-3 harfbuzz musicbrainz5 pango-1.0
WANTLIB += pangocairo-1.0

MODULES=	devel/meson \
		x11/gnome

LIB_DEPENDS=	audio/libmusicbrainz5 \
		evince-*-!light:graphics/evince

BUILD_DEPENDS=	www/webkitgtk4 \
		x11/gnome/gjs \
		x11/gtksourceview4

RUN_DEPENDS=	www/webkitgtk4 \
		x11/gnome/gjs \
		x11/gtksourceview4

.include <bsd.port.mk>
