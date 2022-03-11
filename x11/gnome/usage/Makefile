COMMENT=		system resources status

GNOME_PROJECT=		gnome-usage
GNOME_VERSION=		3.38.1

CATEGORIES=		sysutils

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo dazzle-1.0 gdk-3 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 gtop-2.0 handy-1 intl m pango-1.0 tracker-sparql-3.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache vala

LIB_DEPENDS=		devel/libgtop2 \
			x11/gnome/libdazzle \
			x11/gnome/tracker3 \
			x11/libhandy

.include <bsd.port.mk>
