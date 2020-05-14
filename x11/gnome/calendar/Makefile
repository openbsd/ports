# $OpenBSD: Makefile,v 1.50 2020/05/14 15:00:50 jasper Exp $

COMMENT =		GNOME calendar

GNOME_PROJECT =		gnome-calendar
GNOME_VERSION =		3.36.1

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo dazzle-1.0 ecal-2.0 edataserver-1.2 edataserverui-1.2
WANTLIB += gdk-3 geoclue-2 gio-2.0 glib-2.0 goa-1.0 gobject-2.0
WANTLIB += gtk-3 gweather-3 ical-glib intl m pango-1.0 pangocairo-1.0
WANTLIB += soup-2.4 handy-0.0

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server>=3.34.0 \
			x11/gnome/libdazzle \
			x11/libhandy

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
