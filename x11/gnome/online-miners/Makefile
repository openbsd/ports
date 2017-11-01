# $OpenBSD: Makefile,v 1.28 2017/11/01 15:18:09 ajacoutot Exp $

TRACKER_API=		2.0

COMMENT=		crawls through your online content

GNOME_PROJECT=		gnome-online-miners
GNOME_VERSION=		3.26.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl ffi gck-1 gcr-base-3 gcrypt gdata gfbgraph-0.2
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0 gpg-error
WANTLIB += grilo-0.3 gthread-2.0 iconv icudata icui18n icuuc intl
WANTLIB += json-glib-1.0 kvm lzma m nghttp2 nspr4 nss3 oauth p11-kit
WANTLIB += pcre plc4 plds4 pthread rest-0.7 smime3 softokn3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl ssl3 uuid xml2 z zapojit-0.0
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += tracker-miner-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libgdata \
			x11/gnome/gfbgraph \
			x11/gnome/grilo \
			x11/gnome/libzapojit \
			x11/gnome/tracker

# com.intel.dleyna-server
RUN_DEPENDS +=		net/dleyna/server

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/gnome-online-miners/*.{a,la}

.include <bsd.port.mk>
