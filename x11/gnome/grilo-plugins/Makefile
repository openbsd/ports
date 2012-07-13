# $OpenBSD: Makefile,v 1.10 2012/07/13 12:45:27 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.1.19
API=		0.1

REVISION=	1

TRACKER_VERSION=0.14
SUBST_VARS=	API TRACKER_VERSION

CATEGORIES+=	multimedia

HOMEPAGE=	http://live.gnome.org/Grilo

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB += archive bz2 crypto curl dbus-1 e2fs-uuid expat ffi
WANTLIB += gcrypt gdata gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error grilo-0.1 grlnet-0.1
WANTLIB += gssdp-1.0 gthread-2.0 gupnp-1.0 gupnp-av-1.0 idn kvm
WANTLIB += lua5.1 lzma m nspr4 nss3 oauth pcre plc4 plds4 quvi
WANTLIB += rest-0.7 smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += ssl ssl3 totem-plparser tracker-sparql-0.14 unistring
WANTLIB += xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libgdata \
		mail/gmime \
		net/gupnp/av \
		net/librest \
		net/quvi/libquvi \
		security/nss \
		x11/gnome/grilo>=0.1.19 \
		x11/gnome/tracker>=0.14.0

LIBTOOL_FLAGS=	--tag=disable-static

MODGNOME_LDFLAGS=-Wl,-rpath,${TRUEPREFIX}/lib/tracker-${TRACKER_VERSION}

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

# from the configure script: "Do not build SHOUTCast by default; it is broken"
CONFIGURE_ARGS += --disable-shoutcast

# XXX remove on next upgrade
pre-configure:
	perl -pi -e 's,tracker-sparql-0.12,tracker-sparql-0.14,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
