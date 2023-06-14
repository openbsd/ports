# build time requirement for WebKit2-4.0 introspection
USE_WXNEEDED=		Yes

COMMENT=		GObject based library for rendering epub docs

GNOME_PROJECT=		libgepub
GNOME_VERSION=		0.7.1

CATEGORIES=		graphics

SHARED_LIBS += gepub-0.7                 0.0 # 0.0.0

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += archive gio-2.0 glib-2.0 gobject-2.0 javascriptcoregtk-4.1
WANTLIB += webkit2gtk-4.1 xml2

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		archivers/libarchive \
			www/webkitgtk4,webkitgtk41

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

.include <bsd.port.mk>
