# $OpenBSD: Makefile,v 1.56 2019/05/17 16:45:26 sthen Exp $

COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		3.0.27
API_VERSION=		3.0
REVISION=		0

SHARED_LIBS +=  clutter-gst-3.0      0.0      # 18.0

WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += clutter-1.0 cogl cogl-pango cogl-path drm epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gbm gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 harfbuzz iconv intl json-glib-1.0 m
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-dri2 xcb-dri3 xcb-present xcb-render
WANTLIB += xcb-shm xcb-sync xcb-xfixes xshmfence z

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		graphics/clutter/core>=1.22.0 \
			multimedia/gstreamer1/plugins-base

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.{a,la}

.include <bsd.port.mk>
