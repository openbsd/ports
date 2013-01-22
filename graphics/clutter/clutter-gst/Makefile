# $OpenBSD: Makefile,v 1.18 2013/01/22 21:41:49 jasper Exp $

COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		2.0.0

API_VERSION=		2.0

SHARED_LIBS +=  clutter-gst-2.0    0.0      # 999.0

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += clutter-1.0 cogl cogl-pango drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 harfbuzz icudata
WANTLIB += icule icuuc json-glib-1.0 m orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm z

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			multimedia/gstreamer1/plugins-base>=1.0.0

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.la

.include <bsd.port.mk>
