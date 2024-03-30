COMMENT=		task manager for GNOME

DIST_TUPLE=		gnome World Endeavour 43.0 .
REVISION=		2

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c ecal-2.0 edataserver-1.2 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 goa-1.0 gobject-2.0 graphene-1.0 gtk-4 ical-glib
WANTLIB += intl m pango-1.0 peas-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libpeas \
			x11/gnome/libadwaita

.include <bsd.port.mk>
