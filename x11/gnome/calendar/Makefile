# $OpenBSD: Makefile,v 1.33 2017/11/08 06:16:54 ajacoutot Exp $

COMMENT =		GNOME calendar

GNOME_PROJECT =		gnome-calendar
GNOME_VERSION =		3.26.2
REVISION =		1

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cairo ecal-1.2 edataserver-1.2 edataserverui-1.2
WANTLIB += gdk-3 gio-2.0 glib-2.0 goa-1.0 gobject-2.0 gtk-3 ical
WANTLIB += intl m pango-1.0 pangocairo-1.0 soup-2.4
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

.include <bsd.port.mk>
