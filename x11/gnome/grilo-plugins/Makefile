# $OpenBSD: Makefile,v 1.5 2012/02/23 11:29:46 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.1.18
API=		0.1

REVISION=	1

TRACKER_VERSION=0.12
SUBST_VARS=	API TRACKER_VERSION

CATEGORIES+=	multimedia

HOMEPAGE=	http://live.gnome.org/Grilo

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += crypto curl dbus-1 e2fs-uuid ffi gcrypt gdata gio-2.0
WANTLIB += glib-2.0 gmime-2.6 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error grilo-0.1 grlnet-0.1 gssdp-1.0 gthread-2.0
WANTLIB += gupnp-1.0 gupnp-av-1.0 icui18n icuuc idn kvm lua m
WANTLIB += nspr4 nss3 oauth pcre plc4 plds4 quvi rest-0.7 smime3
WANTLIB += softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl ssl3 tracker-sparql-0.12
WANTLIB += xml2 z
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libgdata \
		mail/gmime \
		net/gupnp/av \
		net/librest \
		net/quvi/libquvi \
		security/nss \
		x11/gnome/grilo \
		x11/gnome/tracker

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-static \
		--enable-localmetadata \
		--enable-vimeo \
		--enable-apple-trailers \
		--enable-metadata-store \
		--enable-podcasts \
		--enable-upnp \
		--enable-lastfm-albumart \
		--enable-jamendo \
		--enable-flickr \
		--enable-bliptv \
		--enable-filesystem \
		--enable-youtube

.include <bsd.port.mk>
