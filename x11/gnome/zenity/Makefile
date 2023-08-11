COMMENT=		dialogs for GNOME

GNOME_PROJECT=		zenity
GNOME_VERSION=		3.99.1

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c gio-2.0 glib-2.0 gobject-2.0 gtk-4 intl
WANTLIB += pango-1.0

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		x11/gnome/libadwaita

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
