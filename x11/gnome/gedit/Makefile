COMMENT=		lightweight GNOME text editor

GNOME_PROJECT=		gedit
GNOME_VERSION=		44.2

CATEGORIES=		editors

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += amtk-5 atk-1.0 c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gobject-2.0 gspell-1 gtk-3
WANTLIB += gtksourceview-4 intl m pango-1.0 peas-1.0 peas-gtk-1.0
WANTLIB += tepl-6

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			devel/py-gobject3${MODPY_FLAVOR} \
			textproc/gtk-doc

LIB_DEPENDS=		devel/libpeas \
			textproc/gspell \
			x11/gnome/tepl \
			x11/gtksourceview4

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR}

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

TEST_IS_INTERACTIVE=	X11

.include <bsd.port.mk>
