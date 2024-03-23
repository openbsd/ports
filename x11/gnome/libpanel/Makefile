COMMENT=		IDE paneling library for GTK

GNOME_PROJECT=		libpanel
GNOME_VERSION=		1.6.0

SHARED_LIBS += panel-1                   0.2 # 1.0.0

# LGPLv3
PERMIT_PACKAGE=		Yes

# std=gnu18
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += adwaita-1 cairo gio-2.0 glib-2.0 gobject-2.0 graphene-1.0
WANTLIB += gtk-4 intl

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection gtk-update-icon-cache \
			vala

# example/meson.build
BUILD_DEPENDS +=	x11/gtksourceview5

LIB_DEPENDS=		x11/gnome/libadwaita

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
