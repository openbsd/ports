# $OpenBSD: Makefile,v 1.40 2021/12/19 13:20:34 ajacoutot Exp $

COMMENT=		GTK+ widget for clutter

GNOME_PROJECT=		clutter-gtk
GNOME_VERSION=		1.8.4
REVISION=		2

SHARED_LIBS +=  clutter-gtk-1.0      0.1      # 800.4

WANTLIB += ${COMPILER_LIBCXX} EGL X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atk-bridge-2.0 cairo cairo-gobject clutter-1.0
WANTLIB += cogl cogl-pango cogl-path drm epoxy execinfo expat
WANTLIB += ffi fontconfig freetype fribidi gbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl jpeg json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png xcb xcb-dri2 xcb-dri3 xcb-present xcb-render xcb-shm
WANTLIB += xcb-sync xcb-xfixes xshmfence z

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		graphics/clutter/core>=1.24.0 \
			x11/gtk+3

.include <bsd.port.mk>
