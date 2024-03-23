COMMENT=		system resources status

GNOME_PROJECT=		gnome-usage
GNOME_VERSION=		45.1

CATEGORIES=		sysutils

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c cairo gee-0.8 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += graphene-1.0 gtk-4 gtop-2.0 intl m pango-1.0 tracker-sparql-3.0

CFLAGS_base-clang =	 -Wno-error=int-conversion

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache vala

LIB_DEPENDS=		devel/libgee \
			devel/libgtop2 \
			x11/gnome/tracker3 \
			x11/gnome/libadwaita

.include <bsd.port.mk>
