# $OpenBSD: Makefile,v 1.76 2019/02/21 17:08:50 ajacoutot Exp $

# XXX: PORTROACH overriden at end of this file.

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.3.8
REVISION=	1

API=		0.3
SUBST_VARS=	API

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avahi-client avahi-common avahi-glib gdata gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0 grilo-0.3
WANTLIB += grlnet-0.3 grlpls-0.3 gstreamer-1.0 intl json-glib-1.0
WANTLIB += mediaart-2.0 oauth pthread soup-2.4 sqlite3 totem-plparser
WANTLIB += tracker-sparql-2.0 xml2

MODULES=	devel/meson \
		x11/gnome

LIB_DEPENDS=	devel/libgdata \
		x11/gnome/grilo \
		x11/gnome/libmediaart \
		x11/gnome/tracker

# com.intel.dleyna-server
RUN_DEPENDS +=	net/dleyna/server

MODGNOME_TOOLS=	yelp

.include <bsd.port.mk>

# Override PORTROACH from gnome.port.mk since we track 0.3.x
PORTROACH=      #empty
