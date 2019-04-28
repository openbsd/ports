# $OpenBSD: Makefile,v 1.44 2019/04/28 09:15:03 ajacoutot Exp $

COMMENT =		GNOME calendar

GNOME_PROJECT =		gnome-calendar
GNOME_VERSION =		3.30.1
REVISION =		0

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dazzle-1.0 ecal-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 gdk-3 gdk_pixbuf-2.0 geoclue-2 geocode-glib
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0 gtk-3
WANTLIB += gweather-3 ical intl m pango-1.0 pangocairo-1.0 pthread
WANTLIB += secret-1 soup-2.4 xml2

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server \
			x11/gnome/libdazzle

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

.include <bsd.port.mk>
