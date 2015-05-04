# $OpenBSD: Makefile,v 1.19 2015/05/04 14:29:06 ajacoutot Exp $

TRACKER_API=		1.0

SHARED_ONLY=		Yes

COMMENT=		crawls through your online content

GNOME_PROJECT=		gnome-online-miners
GNOME_VERSION=		3.14.3

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl ffi gck-1 gcr-base-3 gcrypt gdata gdk_pixbuf-2.0
WANTLIB += gfbgraph-0.2 gio-2.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0
WANTLIB += gpg-error grilo-0.2 gthread-2.0 icudata icui18n icuuc
WANTLIB += idn json-glib-1.0 kvm lzma m mediaart-2.0 nspr4 nss3
WANTLIB += oauth p11-kit pcre plc4 plds4 png pthread rest-0.7
WANTLIB += smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl
WANTLIB += ssl3 uuid xml2 z zapojit-0.0
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += tracker-miner-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		devel/libgdata \
			x11/gnome/gfbgraph \
			x11/gnome/grilo \
			x11/gnome/libzapojit \
			x11/gnome/tracker

# com.intel.dleyna-server
RUN_DEPENDS +=		net/dleyna/server

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

post-install:
	rm ${PREFIX}/lib/gnome-online-miners/*.{a,la}

.include <bsd.port.mk>
