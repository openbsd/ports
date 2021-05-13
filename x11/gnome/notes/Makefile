# $OpenBSD: Makefile,v 1.1.1.1 2021/05/13 10:52:23 jasper Exp $

COMMENT=		simple note editor

GNOME_PROJECT=		gnome-notes
GNOME_VERSION=		40.1

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo curl ecal-2.0 edataserver-1.2 gdk-3 gio-2.0
WANTLIB += glib-2.0 goa-1.0 gobject-2.0 gtk-3 handy-1 ical-glib
WANTLIB += intl javascriptcoregtk-4.0 json-glib-1.0 pango-1.0
WANTLIB += pangocairo-1.0 tracker-sparql-3.0 webkit2gtk-4.0 xml2

TAG =			BIJIBEN_${GNOME_VERSION:S/./_/}
COMMIT =		b5189e213b50cac50f5602945836dc4d85b17959
MASTER_SITES =		https://gitlab.gnome.org/GNOME/${GNOME_PROJECT}/-/archive/${TAG}/
EXTRACT_SUFX =		.tar.gz

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# Must specify C99 for base-gcc
CFLAGS +=		-std=c99

LIB_DEPENDS=		databases/evolution-data-server \
			net/curl \
			x11/gnome/online-accounts \
			x11/gnome/tracker3 \
			x11/libhandy

# needs xdg-email
RUN_DEPENDS +=		devel/xdg-utils


WRKDIST =		${WRKDIR}/gnome-notes-${TAG}-${COMMIT}
MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

.include <bsd.port.mk>
