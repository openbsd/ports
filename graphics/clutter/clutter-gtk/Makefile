# $OpenBSD: Makefile,v 1.17 2012/09/27 13:00:40 jasper Exp $

COMMENT=		GTK+ widget for clutter

GNOME_PROJECT=		clutter-gtk
GNOME_VERSION=		1.3.2
REVISION=		0

SHARED_LIBS +=  clutter-gtk-1.0      0.0      # .0.0

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject clutter-1.0
WANTLIB += cogl cogl-pango dbus-1 drm expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			x11/gtk+3

.include <bsd.port.mk>
