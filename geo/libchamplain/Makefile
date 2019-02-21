# $OpenBSD: Makefile,v 1.40 2019/02/21 08:30:26 jasper Exp $

COMMENT=	library to provide a GTK+ widget to display maps

GNOME_PROJECT=	libchamplain
GNOME_VERSION=	0.12.17
API_VERSION=	0.12

SHARED_LIBS +=  champlain-${API_VERSION}       2.0      # 9.0
SHARED_LIBS +=  champlain-gtk-${API_VERSION}   2.0      # 9.0

SUBST_VARS+=	API_VERSION

CATEGORIES=	geo devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL X11 Xcomposite Xdamage Xext Xfixes Xi Xrandr atk-1.0
WANTLIB += cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-pango cogl-path drm gbm gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 intl json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pthread soup-2.4 sqlite3

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/libsoup \
			graphics/clutter/clutter-gtk

MODGNOME_TOOLS +=	gobject-introspection vala

.include <bsd.port.mk>
