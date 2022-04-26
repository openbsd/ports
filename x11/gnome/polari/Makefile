COMMENT=		IRC Client for GNOME

GNOME_PROJECT=		polari
GNOME_VERSION=		42.0
REVISION=		0

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 girepository-1.0 gjs glib-2.0 gobject-2.0
WANTLIB += telepathy-glib

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

LIB_DEPENDS=		net/telepathy/telepathy-glib \
			x11/gnome/gjs

BUILD_DEPENDS=		x11/gnome/libadwaita # to pull up x11/gtk+3,-guic
RUN_DEPENDS=		x11/gnome/libadwaita

.include <bsd.port.mk>
