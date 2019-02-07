# $OpenBSD: Makefile,v 1.55 2019/02/07 19:38:26 jasper Exp $

COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		3.0.27
API_VERSION=		3.0

SHARED_LIBS +=  clutter-gst-3.0      0.0      # 18.0

WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += clutter-1.0 cogl cogl-pango cogl-path drm epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 harfbuzz iconv
WANTLIB += intl json-glib-1.0 m orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png16 pthread xcb xcb-dri2
WANTLIB += xcb-dri3 xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xshmfence z

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		graphics/clutter/core>=1.22.0 \
			multimedia/gstreamer1/plugins-base

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.{a,la}

.include <bsd.port.mk>
