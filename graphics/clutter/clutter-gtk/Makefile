# $OpenBSD: Makefile,v 1.35 2016/09/08 08:49:10 jasper Exp $

COMMENT=		GTK+ widget for clutter

GNOME_PROJECT=		clutter-gtk
GNOME_VERSION=		1.8.0
REVISION=		0

SHARED_LIBS +=  clutter-gtk-1.0      0.0      # 800.0

WANTLIB += EGL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject clutter-1.0 cogl cogl-pango
WANTLIB += cogl-path dbus-1 drm epoxy expat ffi fontconfig freetype
WANTLIB += gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += intl json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-dri2
WANTLIB += xcb-render xcb-shm xcb-xfixes z

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		graphics/clutter/core>=1.24.0 \
			x11/gtk+3

.include <bsd.port.mk>
