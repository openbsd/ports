COMMENT=		text editor

DIST_TUPLE=		gnome World/gedit gedit 49.0 .
DIST_TUPLE +=		gnome GNOME libgd c7c7ff4e05d3fe82854219091cf116cce6b19de0 subprojects/libgd

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gedit-amtk-5 gedit-gfls-1
WANTLIB += gedit-gtksourceview-300 gedit-tepl-6 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gspell-1 gtk-3 intl m pango-1.0 peas-1.0
WANTLIB += peas-gtk-1.0

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			devel/py-gobject3 \
			textproc/gtk-doc

LIB_DEPENDS=		devel/libpeas \
			textproc/gspell \
			x11/gedit/tepl

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS +=		devel/py-gobject3

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

TEST_IS_INTERACTIVE=	X11

.include <bsd.port.mk>
