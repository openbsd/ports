COMMENT=		file loading and saving module

LIBGEDIT_PROJECT=	libgedit-gfls
LIBGEDIT_VERSION=	0.1.0

SHARED_LIBS += gedit-gfls-1              0.0 # 0

CATEGORIES=		devel

WANTLIB += gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

BUILD_DEPENDS=		textproc/gtk-doc

# needed to build tests
BUILD_DEPENDS +=	x11/gtk+3

LIB_DEPENDS=		devel/glib2

.include <bsd.port.mk>
