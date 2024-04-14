COMMENT=		keymap viewer

GNOME_PROJECT=		tecla
GNOME_VERSION=		46.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c gio-2.0 glib-2.0 gobject-2.0 gtk-4 intl
WANTLIB += m pango-1.0 wayland-client xkbcommon

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		x11/gnome/libadwaita \
			x11/xkbcommon

.include <bsd.port.mk>
