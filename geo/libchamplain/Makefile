COMMENT=	library to provide a GTK+ widget to display maps

GNOME_PROJECT=	libchamplain
GNOME_VERSION=	0.12.21
API_VERSION=	0.12

SHARED_LIBS +=  champlain-${API_VERSION}       2.0 # 0.11.10
SHARED_LIBS +=  champlain-gtk-${API_VERSION}   2.0 # 0.11.10

SUBST_VARS+=	API_VERSION

CATEGORIES=	geo devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-path gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 m pango-1.0 soup-3.0 sqlite3

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/libsoup3 \
			graphics/clutter/clutter-gtk

MODGNOME_TOOLS +=	gobject-introspection vala

.include <bsd.port.mk>
