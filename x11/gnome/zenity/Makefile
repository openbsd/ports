PORTROACH=		skipv:3.90.0

COMMENT=		dialogs for GNOME

GNOME_PROJECT=		zenity
GNOME_VERSION=		3.44.0

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 c gdk-3 gdk_pixbuf-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl pango-1.0

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS=		yelp

.include <bsd.port.mk>
