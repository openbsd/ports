# $OpenBSD: Makefile,v 1.75 2018/11/26 14:36:01 ajacoutot Exp $

# XXX: PORTROACH overriden at end of this file.

TRACKER_API=	2.0

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.3.8
REVISION=	0

API=		0.3
SUBST_VARS=	API

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avahi-client avahi-glib gdata gio-2.0 glib-2.0 goa-1.0
WANTLIB += gobject-2.0 grilo-0.3 grlnet-0.3 grlpls-0.3 gstreamer-1.0
WANTLIB += intl json-glib-1.0 mediaart-2.0 oauth soup-2.4 sqlite3
WANTLIB += totem-plparser xml2
WANTLIB += tracker-sparql-${TRACKER_API}

MODULES=	devel/meson \
		x11/gnome

LIB_DEPENDS=	devel/libgdata \
		x11/gnome/grilo>=0.3.6 \
		x11/gnome/libmediaart \
		x11/gnome/tracker

# com.intel.dleyna-server
RUN_DEPENDS +=	net/dleyna/server

MODGNOME_TOOLS=	yelp

.include <bsd.port.mk>

# Override PORTROACH from gnome.port.mk since we track 0.3.x
PORTROACH=      #empty
