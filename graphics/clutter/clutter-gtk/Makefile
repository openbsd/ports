# $OpenBSD: Makefile,v 1.15 2012/07/07 12:50:11 ajacoutot Exp $

COMMENT=		GTK+ widget for clutter

GNOME_PROJECT=		clutter-gtk
GNOME_VERSION=		1.2.0

SHARED_LIBS +=  clutter-gtk-1.0      0.0      # .0.0

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += clutter-1.0 cogl cogl-pango drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm z

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		graphics/clutter/core>=${MAJOR} \
			x11/gtk+3

.include <bsd.port.mk>
