COMMENT=		GNOME desktop calculator

GNOME_PROJECT=		gnome-calculator
GNOME_VERSION=		46.0

CATEGORIES=		math

SHARED_LIBS += gcalc-2                   0.0 # 1
SHARED_LIBS += gci-1                     0.0 # 0

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c gee-0.8 gio-2.0 glib-2.0 gobject-2.0 gtk-4
WANTLIB += gtksourceview-5 intl mpc mpfr soup-3.0 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		lang/vala,,-valadoc

LIB_DEPENDS=		devel/libgee \
			devel/libmpc \
			devel/libsoup3 \
			devel/mpfr \
			x11/gnome/libadwaita \
			x11/gtksourceview5

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

.include <bsd.port.mk>
