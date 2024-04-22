COMMENT=		IRC Client for GNOME

GNOME_PROJECT=		polari
GNOME_VERSION=		46.0

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 girepository-1.0 gjs glib-2.0 gobject-2.0
WANTLIB += telepathy-glib tracker-sparql-3.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

LIB_DEPENDS=		net/telepathy/telepathy-glib \
			x11/gnome/gjs \
			x11/gnome/tracker3

BUILD_DEPENDS=		x11/gnome/libadwaita # to pull up x11/gtk+4,-guic
RUN_DEPENDS=		x11/gnome/libadwaita

# src/application.js
RUN_DEPENDS +=		net/telepathy/telepathy-idle \
			net/telepathy/telepathy-logger \
			net/telepathy/telepathy-mission-control

.include <bsd.port.mk>
