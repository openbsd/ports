# $OpenBSD: Makefile,v 1.68 2020/11/07 11:40:16 jasper Exp $

# XXX: https://gitlab.gnome.org/GNOME/gnome-notes/-/merge_requests/79
BROKEN =		needs update to 3.38.0 and unbreak with libhandy1

COMMENT=		simple note editor

GNOME_PROJECT=		bijiben
GNOME_VERSION=		3.36.3

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo cairo-gobject ecal-2.0 edataserver-1.2 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 goa-1.0 gobject-2.0
WANTLIB += gtk-3 ical-glib intl javascriptcoregtk-4.0 m pango-1.0
WANTLIB += pangocairo-1.0 tracker-sparql-2.0 uuid webkit2gtk-4.0
WANTLIB += xml2 handy-0.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# Must specify C99 for base-gcc
CFLAGS +=		-std=c99

LIB_DEPENDS=		databases/evolution-data-server \
			x11/gnome/online-accounts \
			x11/gnome/tracker \
			x11/libhandy

# needs xdg-email
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

.include <bsd.port.mk>
