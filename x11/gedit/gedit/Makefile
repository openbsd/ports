COMMENT=		text editor

GNOME_PROJECT=		gedit
GNOME_VERSION=		46.2
REVISION=		0

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gedit-amtk-5 gedit-gtksourceview-300
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gobject-2.0 gspell-1
WANTLIB += gtk-3 intl m pango-1.0 peas-1.0 peas-gtk-1.0 tepl-6

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
			x11/gedit/tepl

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR}

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

TEST_IS_INTERACTIVE=	X11

.include <bsd.port.mk>
