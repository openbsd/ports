COMMENT=		Text Editor Product Line

GNOME_PROJECT=		tepl
GNOME_VERSION=		6.8.0

CATEGORIES=		devel

SHARED_LIBS += tepl-6                    2.0 # 4

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += cairo gdk-3 gedit-amtk-5 gedit-gtksourceview-300 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 icui18n icuuc intl pango-1.0

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			textproc/gtk-doc

RUN_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		textproc/icu4c \
			x11/libgedit-amtk \
			x11/libgedit-gtksourceview

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
