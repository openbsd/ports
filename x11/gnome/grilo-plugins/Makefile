# $OpenBSD: Makefile,v 1.51 2015/09/08 19:40:11 jasper Exp $

TRACKER_API=	1.0

SHARED_ONLY=	Yes

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.2.15

API=		0.2
SUBST_VARS=	API

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += bz2 crypto curl dbus-1 expat ffi gck-1 gcr-base-3 gcrypt
WANTLIB += gdata gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += goa-1.0 gobject-2.0 gpg-error grilo-0.2 grlnet-0.2
WANTLIB += grlpls-0.2 gthread-2.0 icudata icui18n icuuc idn json-glib-1.0
WANTLIB += kvm lzma m mediaart-2.0 nspr4 nss3 oauth p11-kit pcre
WANTLIB += plc4 plds4 png pthread smime3 softokn3 soup-2.4
WANTLIB += sqlite3 ssl ssl3 totem-plparser uuid
WANTLIB += xml2 z lzo2
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libgdata \
		mail/gmime \
		security/nss \
		x11/gnome/grilo>=0.2.12 \
		x11/gnome/libmediaart \
		x11/gnome/tracker

# com.intel.dleyna-server
RUN_DEPENDS +=	net/dleyna/server

MODGNOME_TOOLS=	yelp

post-install:
	rm ${PREFIX}/lib/grilo-${API}/*.{a,la}

.include <bsd.port.mk>
