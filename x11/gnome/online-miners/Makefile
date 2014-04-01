# $OpenBSD: Makefile,v 1.11 2014/04/01 13:21:46 ajacoutot Exp $

TRACKER_VERSION=	1.0

SHARED_ONLY=		Yes

COMMENT=		crawls through your online content

GNOME_PROJECT=		gnome-online-miners
GNOME_VERSION=		3.12.0
REVISION=		1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl ffi gck-1 gcr-base-3 gcrypt gdata gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0 gpg-error
WANTLIB += grilo-0.2 gthread-2.0 icui18n icuuc idn json-glib-1.0
WANTLIB += kvm m nspr4 nss3 oauth p11-kit pcre plc4 plds4 pthread
WANTLIB += rest-0.7 smime3 softokn3 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 ssl ssl3 uuid xml2 z zapojit-0.0 icudata
WANTLIB += gdk_pixbuf-2.0 gfbgraph-0.2 mediaart-1.0 png
WANTLIB += tracker-sparql-${TRACKER_VERSION}
WANTLIB += tracker-miner-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		devel/libgdata \
			x11/gnome/gfbgraph \
			x11/gnome/grilo \
			x11/gnome/libzapojit \
			x11/gnome/tracker

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

post-install:
	rm ${PREFIX}/lib/gnome-online-miners/*.{a,la}

.include <bsd.port.mk>
