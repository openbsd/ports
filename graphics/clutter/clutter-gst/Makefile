# $OpenBSD: Makefile,v 1.24 2013/08/06 18:08:42 jasper Exp $

COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		2.0.6

API_VERSION=		2.0

SHARED_LIBS +=  clutter-gst-2.0    0.1      # 2.0

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo cairo-gobject clutter-1.0
WANTLIB += cogl cogl-pango expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 harfbuzz
WANTLIB += json-glib-1.0 m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MODGNOME_TOOLS=		gi

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			multimedia/gstreamer1/plugins-base>=1.0.0

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.la

.include <bsd.port.mk>
