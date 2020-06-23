# $OpenBSD: Makefile,v 1.99 2020/06/23 07:54:47 jasper Exp $

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		3.36.1

SHARED_LIBS += gweather-3                3.4 # 15.0.0

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += gdk_pixbuf-2.0 geocode-glib gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl m soup-2.4 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection vala
LIB_DEPENDS=		geo/geocode-glib \
			x11/gtk+3

CONFIGURE_ARGS =	-Dglade_catalog=false

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_ENV =		XDG_CACHE_HOME=${WRKBUILD}

.include <bsd.port.mk>
