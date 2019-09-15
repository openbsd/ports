# $OpenBSD: Makefile,v 1.80 2019/09/15 16:43:34 ajacoutot Exp $

# XXX: PORTROACH overriden at end of this file.

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.3.10

API=		0.3
SUBST_VARS=	API

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODLUA_WANTLIB}
WANTLIB += archive avahi-client avahi-glib gdata gio-2.0 glib-2.0
WANTLIB += goa-1.0 gobject-2.0 grilo-0.3 grlnet-0.3 grlpls-0.3
WANTLIB += gstreamer-1.0 intl json-glib-1.0 mediaart-2.0 oauth
WANTLIB += soup-2.4 sqlite3 totem-plparser totem-plparser-mini
WANTLIB += tracker-sparql-2.0 xml2

MODULES=	devel/meson \
		lang/lua \
		x11/gnome

BUILD_DEPENDS=	devel/gperf

LIB_DEPENDS=	devel/libgdata \
		x11/gnome/grilo \
		x11/gnome/libmediaart \
		x11/gnome/tracker

# com.intel.dleyna-server
RUN_DEPENDS +=	net/dleyna/server

MODGNOME_TOOLS=	yelp
MODLUA_VERSION=	5.3

LUA_V=		${MODLUA_VERSION:S/.//}
SUBST_VARS +=	LUA_V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build

.include <bsd.port.mk>

# Override PORTROACH from gnome.port.mk since we track 0.3.x
PORTROACH=      #empty
