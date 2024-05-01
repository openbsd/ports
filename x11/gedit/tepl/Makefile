COMMENT=		Text Editor Product Line

LIBGEDIT_PROJECT=	libgedit-tepl
LIBGEDIT_VERSION=	6.10.0

SHARED_LIBS += gedit-tepl-6              0.0 # 0

CATEGORIES=		devel

WANTLIB += cairo gdk-3 gedit-amtk-5 gedit-gfls-1 gedit-gtksourceview-300
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 handy-1 icui18n
WANTLIB += icuuc intl pango-1.0

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/gsettings-desktop-schemas \
			textproc/gtk-doc

RUN_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		textproc/icu4c \
			x11/gedit/amtk \
			x11/gedit/gfls \
			x11/gedit/gtksourceview \
			x11/libhandy

.include <bsd.port.mk>
