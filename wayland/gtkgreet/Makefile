COMMENT =	Gtk+ greetd login manager


DIST_TUPLE =	srht kennylevinsen gtkgreet 0.8 .

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

MODULES =	devel/meson

CONFIGURE_ARGS =	-Dwerror=false

BUILD_DEPENDS =	textproc/scdoc \
		devel/gettext,-tools
LIB_DEPENDS =	wayland/gtk-layer-shell \
		devel/json-c
RUN_DEPENDS =	wayland/greetd

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 gtk-layer-shell intl json-c

.include <bsd.port.mk>
