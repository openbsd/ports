COMMENT=		keyboard configuration library

GNOME_PROJECT=		libgnomekbd
GNOME_VERSION=		3.28.0

SHARED_LIBS += gnomekbd                  8.0 # 3.28.0
SHARED_LIBS += gnomekbdui                8.0 # 3.28.0

CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl m pango-1.0 pangocairo-1.0 xklavier

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_TOOLS=		desktop-file-utils

# XXX does not seem used (gir files not generated) but meson checks for it:
# libgnomekbd/meson.build:gnome.generate_gir
MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		x11/gnome/libxklavier \
			x11/gtk+3

.include <bsd.port.mk>
