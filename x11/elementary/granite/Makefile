# $OpenBSD: Makefile,v 1.1.1.1 2020/06/25 15:41:26 bcallah Exp $

COMMENT =	elementary OS Gtk+/GLib extension library

SHARED_LIBS +=	granite                   0.0 # 5.4.0

GH_PROJECT =	granite
GH_TAGNAME =	5.4.0

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 intl m pango-1.0

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gobject-introspection \
		lang/vala

LIB_DEPENDS =	devel/libgee \
		x11/gtk+3

RUN_DEPENDS =	x11/gtk+3,-guic

.include <bsd.port.mk>
