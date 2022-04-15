COMMENT=		user-friendly terminal emulator for GNOME

GNOME_PROJECT=		gnome-console
GNOME_VERSION=		42.beta
PKGNAME=		${GNOME_PROJECT}-${GNOME_VERSION:S/.//}

CATEGORIES=		x11

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtop-2.0
WANTLIB += handy-1 intl m nautilus-extension pango-1.0 vte-2.91

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		www/sassc

LIB_DEPENDS=		devel/libgtop2 \
			devel/vte3 \
			x11/libhandy \
			x11/gnome/nautilus

.include <bsd.port.mk>
