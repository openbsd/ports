# $OpenBSD: Makefile,v 1.19 2013/03/02 12:32:11 jasper Exp $

COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		2.0.2

API_VERSION=		2.0

SHARED_LIBS +=  clutter-gst-2.0    0.1      # 2.0

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo cairo-gobject clutter-1.0
WANTLIB += cogl cogl-pango expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 harfbuzz icudata icule icuuc json-glib-1.0
WANTLIB += m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			multimedia/gstreamer1/plugins-base>=1.0.0

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.la

.include <bsd.port.mk>
