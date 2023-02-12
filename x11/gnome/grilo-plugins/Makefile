# XXX: PORTROACH overriden at end of this file.

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.3.15
REVISION=	2

API=		0.3
SUBST_VARS=	API

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += archive avahi-client avahi-glib dmapsharing-4.0 gio-2.0
WANTLIB += glib-2.0 goa-1.0 gobject-2.0 gom-1.0 grilo-0.3 grlnet-0.3
WANTLIB += grlpls-0.3 gstreamer-1.0 intl json-glib-1.0 lua5.3
WANTLIB += mediaart-2.0 oauth sqlite3 totem-plparser totem-plparser-mini
WANTLIB += tracker-sparql-3.0 xml2

MODULES=	devel/meson \
		lang/lua \
		x11/gnome

BUILD_DEPENDS=	devel/gperf

LIB_DEPENDS=	net/avahi,-glib \
		x11/gnome/gom \
		x11/gnome/online-accounts \
		x11/gnome/grilo \
		x11/gnome/libdmapsharing4 \
		x11/gnome/libmediaart \
		x11/gnome/tracker3

# com.intel.dleyna-server
RUN_DEPENDS +=	net/dleyna

# org.freedesktop.Tracker3.Miner.Files
RUN_DEPENDS +=	x11/gnome/tracker3

MODGNOME_TOOLS=	yelp
MODLUA_VERSION=	5.3

LUA_V=		${MODLUA_VERSION:S/.//}
SUBST_VARS +=	LUA_V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build

.include <bsd.port.mk>

# Override PORTROACH from gnome.port.mk since we track 0.3.x
PORTROACH=      #empty
