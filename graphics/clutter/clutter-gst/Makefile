COMMENT=		clutter GStreamer integration library

GNOME_PROJECT=		clutter-gst
GNOME_VERSION=		3.0.27
API_VERSION=		3.0
REVISION=		1

SHARED_LIBS +=  clutter-gst-3.0      0.0      # 18.0

WANTLIB += ${COMPILER_LIBCXX} EGL X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo cairo-gobject clutter-1.0 cogl cogl-pango
WANTLIB += cogl-path drm epoxy execinfo expat ffi fontconfig freetype
WANTLIB += fribidi gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gstaudio-1.0 gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 harfbuzz iconv intl jpeg json-glib-1.0
WANTLIB += m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png xcb xcb-dri2 xcb-dri3 xcb-present xcb-render
WANTLIB += xcb-shm xcb-sync xcb-xfixes xshmfence z

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		graphics/clutter/core>=1.22.0 \
			multimedia/gstreamer1/plugins-base

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.{a,la}

.include <bsd.port.mk>
