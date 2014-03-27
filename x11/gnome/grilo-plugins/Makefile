# $OpenBSD: Makefile,v 1.39 2014/03/27 17:00:15 ajacoutot Exp $

TRACKER_VERSION=1.0

SHARED_ONLY=	Yes

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.2.12
REVISION=	1

API=		0.2
SUBST_VARS=	API

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive bz2 crypto curl expat ffi gck-1 gcr-base-3
WANTLIB += gcrypt gdata gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += goa-1.0 gobject-2.0 gpg-error grilo-0.2 grlnet-0.2
WANTLIB += gssdp-1.0 gthread-2.0 gupnp-1.0 gupnp-av-1.0 icui18n
WANTLIB += icuuc idn json-glib-1.0 kvm lzma m nspr4 nss3 oauth
WANTLIB += p11-kit pcre plc4 plds4 pthread smime3 softokn3 soup-2.4
WANTLIB += sqlite3 ssl ssl3 totem-plparser uuid
WANTLIB += xml2 z dbus-1 grlpls-0.2 icudata
WANTLIB += avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += tracker-sparql-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libgdata \
		mail/gmime \
		net/gupnp/av \
		security/nss \
		x11/gnome/grilo>=0.2.10 \
		x11/gnome/tracker

LIBTOOL_FLAGS=	--tag=disable-static

MODGNOME_TOOLS=	yelp
MODGNOME_LDFLAGS=-Wl,-rpath,${TRUEPREFIX}/lib/tracker-${TRACKER_VERSION}

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/grilo-${API}/*.la

.include <bsd.port.mk>
