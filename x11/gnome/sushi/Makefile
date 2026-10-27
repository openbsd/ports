COMMENT=		quick previewer for Nautilus

GNOME_PROJECT=		sushi
GNOME_VERSION=		51.2
REVISION=		0

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += X11 cairo freetype fribidi gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gtk-4 harfbuzz pango-1.0
WANTLIB += pangocairo-1.0 webkitgtk-6.0

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			www/webkitgtk4,webkitgtk60 \
			x11/gtk+4

BUILD_DEPENDS=		devel/appstream \
			x11/blueprint-compiler \
			x11/gnome/gjs \
			x11/gnome/glycin \
			x11/gnome/libadwaita \
			x11/gnome/papers \
			x11/gtksourceview5

RUN_DEPENDS=		x11/gnome/gjs \
			x11/gnome/glycin \
			x11/gnome/libadwaita \
			x11/gnome/papers \
			x11/gtksourceview5

# src/core/main.js
RUN_DEPENDS +=		devel/libsoup3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
