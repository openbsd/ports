# $OpenBSD: Makefile,v 1.62 2019/12/27 17:20:34 sthen Exp $

COMMENT=		simple note editor

GNOME_PROJECT=		bijiben
GNOME_VERSION=		3.34.1

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo cairo-gobject ecal-2.0 edataserver-1.2 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 goa-1.0 gobject-2.0
WANTLIB += gtk-3 ical-glib intl javascriptcoregtk-4.0 m pango-1.0
WANTLIB += pangocairo-1.0 tracker-sparql-2.0 uuid webkit2gtk-4.0
WANTLIB += xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		databases/evolution-data-server \
			x11/gnome/online-accounts \
			x11/gnome/tracker

# needs xdg-email
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

.include <bsd.port.mk>
