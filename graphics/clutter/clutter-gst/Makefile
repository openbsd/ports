# $OpenBSD: Makefile,v 1.14 2012/09/06 12:38:35 ajacoutot Exp $

COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		1.6.0
REVISION=		2

SHARED_LIBS +=  clutter-gst-1.0    0.0      # 406.0

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += clutter-1.0 cogl cogl-pango drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gsttag-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 json-glib-1.0 m orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 z

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			multimedia/gstreamer-0.10/plugins-base

.include <bsd.port.mk>
