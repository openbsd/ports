# $OpenBSD: Makefile,v 1.2 2011/11/11 15:24:29 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	plugins for Grilo

GNOME_PROJECT=	grilo-plugins
GNOME_VERSION=	0.1.17
API=		0.1
REVISION=	0

CATEGORIES+=	multimedia

HOMEPAGE=	http://live.gnome.org/Grilo

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += assuan dbus-1 e2fs-uuid ffi gcrypt gio-2.0 glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gpgme-pthread grilo-0.1 grlnet-0.1 gssdp-1.0 gthread-2.0
WANTLIB += gupnp-1.0 gupnp-av-1.0 m pcre rest-0.7 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 xml2 z
WANTLIB += crypto curl gdata idn lua nspr4 nss3 oauth plc4 plds4
WANTLIB += quvi smime3 softokn3 ssl ssl3

LIB_DEPENDS=	devel/libgdata \
		mail/gmime \
		net/gupnp/av \
		net/librest \
		net/quvi/libquvi \
		security/nss \
		x11/gnome/grilo

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

SUBST_VARS+=	API

.include <bsd.port.mk>
