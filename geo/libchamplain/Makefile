# $OpenBSD: Makefile,v 1.44 2019/10/31 07:27:09 jasper Exp $

COMMENT=	library to provide a GTK+ widget to display maps

GNOME_PROJECT=	libchamplain
GNOME_VERSION=	0.12.20
API_VERSION=	0.12

SHARED_LIBS +=  champlain-${API_VERSION}       2.0      # 11.10
SHARED_LIBS +=  champlain-gtk-${API_VERSION}   2.0      # 11.10

SUBST_VARS+=	API_VERSION

CATEGORIES=	geo devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-path gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 m pango-1.0 soup-2.4 sqlite3

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/libsoup \
			graphics/clutter/clutter-gtk

MODGNOME_TOOLS +=	gobject-introspection vala

.include <bsd.port.mk>
