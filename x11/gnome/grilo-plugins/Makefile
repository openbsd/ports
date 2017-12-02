# $OpenBSD: Makefile,v 1.71 2017/12/02 12:44:33 edd Exp $

# XXX: PORTROACH overriden at end of this file.

TRACKER_API=	2.0

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.3.5
REVISION=	3

API=		0.3
SUBST_VARS=	API

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive assuan avahi-client avahi-common avahi-glib
WANTLIB += avahi-gobject bz2 crypto curl dbus-1 expat ffi gck-1
WANTLIB += gcr-base-3 gcrypt gdata gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmime-3.0 gmodule-2.0 goa-1.0 gobject-2.0 gpg-error
WANTLIB += gpgme grilo-0.3 grlnet-0.3 grlpls-0.3 gthread-2.0
WANTLIB += iconv icudata icui18n icuuc idn intl json-glib-1.0
WANTLIB += kvm lz4 lzma m mediaart-2.0 nghttp2 nspr4 nss3 oauth
WANTLIB += p11-kit pcre plc4 plds4 png pthread smime3 nssutil3
WANTLIB += soup-2.4 sqlite3 ssl ssl3 totem-plparser uuid xml2
WANTLIB += z
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

MODULES=	x11/gnome

LIB_DEPENDS=	devel/libgdata \
		security/nss \
		x11/gnome/grilo>=0.3.0 \
		x11/gnome/libmediaart \
		x11/gnome/tracker

# com.intel.dleyna-server
RUN_DEPENDS +=	net/dleyna/server

MODGNOME_TOOLS=	yelp

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/grilo-${API}/*.{a,la}

.include <bsd.port.mk>

# Override PORTROACH from gnome.port.mk since we track 0.3.x
PORTROACH=      #empty
