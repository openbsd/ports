COMMENT=		GTK4 widget to display maps

GNOME_PROJECT=		libshumate
GNOME_VERSION=		1.0.5

SHARED_LIBS += shumate-1.0               0.0 # 1.0

CATEGORIES=		geo

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 graphene-1.0
WANTLIB += gtk-4 intl m soup-3.0 sqlite3

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection vala

LIB_DEPENDS=		devel/libsoup3 \
			x11/gtk+4

DEBUG_PACKAGES=		${BUILD_PACKAGES}

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=		-std=gnu99
.endif

.include <bsd.port.mk>
