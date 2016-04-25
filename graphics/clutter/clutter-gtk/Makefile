# $OpenBSD: Makefile,v 1.34 2016/04/25 09:36:01 jasper Exp $

COMMENT=		GTK+ widget for clutter

GNOME_PROJECT=		clutter-gtk
GNOME_VERSION=		1.8.0

SHARED_LIBS +=  clutter-gtk-1.0      0.0      # 800.0

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject clutter-1.0 cogl cogl-pango dbus-1
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz json-glib-1.0 cogl-path
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z
WANTLIB += EGL X11-xcb drm epoxy gbm xcb-dri2
WANTLIB += xcb-shape xcb-xfixes iconv intl

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		graphics/clutter/core>=1.24.0 \
			x11/gtk+3

.include <bsd.port.mk>
