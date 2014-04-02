# $OpenBSD: Makefile,v 1.33 2014/04/02 09:36:11 jasper Exp $

COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		2.0.10
REVISION=		1

API_VERSION=		2.0

SHARED_LIBS +=  clutter-gst-2.0      0.2      # 10.0

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo cairo-gobject clutter-1.0
WANTLIB += cogl cogl-pango expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 harfbuzz json-glib-1.0 m orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z cogl-path

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			multimedia/gstreamer1/plugins-base

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.{a,la}

.include <bsd.port.mk>
