# $OpenBSD: Makefile,v 1.24 2014/04/01 13:21:45 ajacoutot Exp $

COMMENT=		GTK+ widget for clutter

GNOME_PROJECT=		clutter-gtk
GNOME_VERSION=		1.4.4
REVISION=		2

SHARED_LIBS +=  clutter-gtk-1.0      0.0      # .0.0

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject clutter-1.0 cogl cogl-pango dbus-1
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz json-glib-1.0 cogl-path
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MODGNOME_TOOLS=		gi

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			x11/gtk+3

.include <bsd.port.mk>
