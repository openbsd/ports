COMMENT=		font viewer for GNOME

GNOME_PROJECT=		gnome-font-viewer
GNOME_VERSION=		42.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c cairo fontconfig freetype gio-2.0 glib-2.0
WANTLIB += gobject-2.0 graphene-1.0 gtk-4 harfbuzz intl m pango-1.0
WANTLIB += pangocairo-1.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		x11/gnome/libadwaita

# XXX should be LIB_DEPENDS but doesn't appear in WANTLIB
BUILD_DEPENDS +=	x11/gnome/desktop,-gtk4
RUN_DEPENDS +=		x11/gnome/desktop,-gtk4

.include <bsd.port.mk>
