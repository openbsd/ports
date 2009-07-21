# $OpenBSD: Makefile,v 1.13 2009/07/21 09:19:32 ajacoutot Exp $

COMMENT-main=		GNOME virtual file system
COMMENT-smb=		samba module for GVFS

GNOME_PROJECT=		gvfs
GNOME_VERSION=		1.0.3
SHARED_LIBS +=	gvfscommon           1.0      # .0.0

PKGNAME-main=		${DISTNAME}p6
PKGNAME-smb=		${GNOME_PROJECT}-smb-${GNOME_VERSION}p3

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -smb

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=	ORBit-2 c dbus-1 dbus-glib-1 gconf-2 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread \
		util

LIB_DEPENDS=		gnome-keyring::x11/gnome/keyring

WANTLIB-main=		${WANTLIB} bz2 gcrypt gnutls gpg-error lzmadec m \
			tasn1 xml2 z crypto
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archive::archivers/libarchive \
			soup-2.4.>=1::devel/libsoup \
			avahi-client,avahi-common,avahi-glib::net/avahi
RUN_DEPENDS-main=	:glib2-fam->=2.18.3:devel/glib2,-fam

LIB_DEPENDS-smb=	${LIB_DEPENDS} \
			gvfscommon.>=1::${BASE_PKGPATH},-main \
			smbclient::net/samba

CONFIGURE_ARGS+=	--disable-gtk-doc \
			--disable-cdda \
			--disable-fuse \
			--disable-hal \
			--disable-obexftp \
			--disable-gphoto2 \
			--enable-archive \
			--enable-avahi \
			--enable-gconf \
			--enable-http \
			--enable-keyring \
			--enable-samba \
			--with-bash-completion-dir="${PREFIX}/share/gvfs"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
