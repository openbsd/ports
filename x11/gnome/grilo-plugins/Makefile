# XXX: PORTROACH overriden at end of this file.

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.3.16
REVISION=	2

API=		0.3
SUBST_VARS=	API

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODLUA_WANTLIB} archive avahi-client avahi-glib dmapsharing-4.0
WANTLIB += gio-2.0 glib-2.0 goa-1.0 gobject-2.0 gom-1.0 grilo-0.3
WANTLIB += grlnet-0.3 grlpls-0.3 gstreamer-1.0 intl json-glib-1.0
WANTLIB += mediaart-2.0 oauth sqlite3 tinysparql-3.0 totem-plparser
WANTLIB += totem-plparser-mini xml2

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
		x11/gnome/tinysparql

# com.intel.dleyna-server
RUN_DEPENDS +=	net/dleyna

# org.freedesktop.Tracker3.Miner.Files
RUN_DEPENDS +=	x11/gnome/localsearch

MODGNOME_TOOLS=	yelp
MODLUA_VERSION=	5.4

LUA_V=		${MODLUA_VERSION:S/.//}
SUBST_VARS +=	LUA_V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build

.include <bsd.port.mk>

# Override PORTROACH from gnome.port.mk since we track 0.3.x
PORTROACH=      #empty
