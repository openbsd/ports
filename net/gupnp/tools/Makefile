COMMENT=		collection of developer-oriented UPnP tools

GNOME_PROJECT=		gupnp-tools
GNOME_VERSION=		0.12.1

WANTLIB += c gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gssdp-1.6 gtk-3 gtksourceview-4 gupnp-1.6 gupnp-av-1.0
WANTLIB += intl soup-3.0 xml2

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		net/gupnp/av \
			net/gupnp/core \
			x11/gtksourceview4

.include <bsd.port.mk>
