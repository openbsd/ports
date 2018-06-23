# $OpenBSD: Makefile,v 1.91 2018/06/23 13:04:44 jasper Exp $

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		3.28.2
REVISION=		0

SHARED_LIBS +=		gweather-3             3.2      # 12.0

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += gdk_pixbuf-2.0 geocode-glib gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl m soup-2.4 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection vala
LIB_DEPENDS=		geo/geocode-glib \
			x11/gtk+3


CONFIGURE_ARGS =	-Dglade_catalog=false

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

.include <bsd.port.mk>
