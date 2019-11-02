# $OpenBSD: Makefile,v 1.49 2019/11/02 11:00:29 jasper Exp $

COMMENT =		GNOME calendar

GNOME_PROJECT =		gnome-calendar
GNOME_VERSION =		3.34.2

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo dazzle-1.0 ecal-2.0 edataserver-1.2 edataserverui-1.2
WANTLIB += gdk-3 geoclue-2 gio-2.0 glib-2.0 goa-1.0 gobject-2.0
WANTLIB += gtk-3 gweather-3 ical-glib intl m pango-1.0 pangocairo-1.0
WANTLIB += soup-2.4

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server>=3.34.0 \
			x11/gnome/libdazzle

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

.include <bsd.port.mk>
