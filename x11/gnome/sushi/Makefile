# $OpenBSD: Makefile,v 1.58 2019/07/07 11:20:55 ajacoutot Exp $

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.32.1

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += EGL X11 Xcomposite Xdamage Xext Xfixes Xi Xrandr atk-1.0
WANTLIB += c cairo cairo-gobject clutter-1.0 clutter-gst-3.0 clutter-gtk-1.0
WANTLIB += cogl cogl-pango cogl-path drm evdocument3 evview3 freetype
WANTLIB += gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 gjs
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gtk-3 gtksourceview-3.0 harfbuzz intl javascriptcoregtk-4.0
WANTLIB += json-glib-1.0 musicbrainz5 pango-1.0 pangocairo-1.0
WANTLIB += pthread soup-2.4 z

MODULES=	devel/meson \
		x11/gnome

# sync with x11/gnome/gjs
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	audio/libmusicbrainz5 \
		graphics/clutter/clutter-gst \
		graphics/clutter/clutter-gtk \
		evince-*-!light:graphics/evince \
		www/webkitgtk4 \
		x11/gnome/gjs \
		x11/gtksourceview3

.include <bsd.port.mk>
