# $OpenBSD: Makefile,v 1.48 2020/05/14 15:19:14 ajacoutot Exp $

COMMENT=		clock application for GNOME

GNOME_PROJECT=		gnome-clocks
GNOME_VERSION=		3.36.2

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c gdk-3 geoclue-2 geocode-glib gio-2.0 glib-2.0
WANTLIB += gnome-desktop-3 gobject-2.0 gsound gtk-3 gweather-3
WANTLIB += handy-0.0 intl m

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		audio/gsound \
			geo/geocode-glib \
			x11/gnome/desktop \
			x11/gnome/libgweather \
			x11/libhandy

# geocoding.vala
BUILD_DEPENDS +=	geo/geoclue2
RUN_DEPENDS +=		geo/geoclue2

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
