COMMENT =	elementary OS Gtk+/GLib extension library

SHARED_LIBS +=  granite-7                 0.0 # 0.0

GH_PROJECT =	granite
GH_TAGNAME =	7.8.1

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += pango-1.0 gee-0.8 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-4 intl m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gobject-introspection \
		lang/vala \
		www/sassc

LIB_DEPENDS =	devel/libgee \
		x11/gtk+4

RUN_DEPENDS =	x11/gtk+4,-guic

CONFIGURE_ARGS = -Ddemo=false

.include <bsd.port.mk>
