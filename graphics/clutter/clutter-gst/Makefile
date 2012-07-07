# $OpenBSD: Makefile,v 1.12 2012/07/07 22:49:15 ajacoutot Exp $

COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		1.6.0
REVISION=		0

SHARED_LIBS +=  clutter-gst-1.0    0.0      # 406.0

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += clutter-1.0 cogl cogl-pango drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstaudio-0.10 gstbase-0.10 gstbasevideo-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gsttag-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 json-glib-1.0 m orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 z

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			multimedia/gstreamer-0.10/plugins-bad

.include <bsd.port.mk>
