COMMENT=		source code editing widget

DIST_TUPLE=		gnome World/gedit libgedit-gtksourceview 299.7.1 .

SHARED_LIBS += gedit-gtksourceview-300   2.0 # 5

CATEGORIES=		devel

WANTLIB += cairo gdk-3 gdk_pixbuf-2.0 gedit-amtk-5 gedit-gfls-1
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl pango-1.0 pangocairo-1.0
WANTLIB += xml2

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/gtk-doc

LIB_DEPENDS=		textproc/libxml \
			x11/gedit/amtk \
			x11/gedit/gfls \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection gtk-update-icon-cache

TEST_DEPENDS=		shells/bash
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
