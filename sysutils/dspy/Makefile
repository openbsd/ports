COMMENT=		D-Bus exploration tool

GNOME_VERSION=		49.2
GNOME_PROJECT=		d-spy

CATEGORIES=		sysutils

HOMEPAGE=		https://apps.gnome.org/en/Dspy/

# GPLv3 - LGPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c dex-1 gio-2.0 glib-2.0 gobject-2.0 gtk-4
WANTLIB += intl

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/appstream

LIB_DEPENDS=		x11/gnome/libadwaita \
			x11/gnome/libdex

.include <bsd.port.mk>
