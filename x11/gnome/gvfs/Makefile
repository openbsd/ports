# $OpenBSD: Makefile,v 1.17 2009/10/14 09:01:39 ajacoutot Exp $

COMMENT-main=	GNOME virtual file system
COMMENT-smb=	samba module for GVFS

GNOME_PROJECT=	gvfs
GNOME_VERSION=	1.4.0

PKGNAME-main=	${DISTNAME}p0
PKGNAME-smb=	${GNOME_PROJECT}-smb-${GNOME_VERSION}

SHARED_LIBS +=	gvfscommon           2.0      # .0.0
SHARED_LIBS +=  gvfscommon-dnssd     0.0      # .0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -smb

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += ORBit-2 c dbus-1 dbus-glib-1 gconf-2 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread util

LIB_DEPENDS=	gnome-keyring::x11/gnome/keyring

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += bz2 crypto gcrypt gnutls gpg-error lzma m proxy soup-2.4
WANTLIB-main += sqlite3 tasn1 xml2 z

DESKTOP_FILES=	Yes

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		archive::archivers/libarchive \
		soup-gnome-2.4.>=1::devel/libsoup,-gnome \
		avahi-client,avahi-common,avahi-glib::net/avahi
RUN_DEPENDS-main= :glib2-fam->=2.18.3:devel/glib2,-fam

LIB_DEPENDS-smb= ${LIB_DEPENDS} \
		gvfscommon.>=2::${BASE_PKGPATH},-main \
		smbclient::net/samba

CONFIGURE_ARGS=	--disable-gtk-doc \
		--disable-cdda \
		--disable-fuse \
		--disable-hal \
		--disable-obexftp \
		--disable-gphoto2 \
		--disable-gudev \
		--disable-udev \
		--enable-archive \
		--enable-avahi \
		--enable-gconf \
		--enable-http \
		--enable-keyring \
		--enable-samba \
		--with-bash-completion-dir="${PREFIX}/share/gvfs"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS+=	GNOME_VERSION

post-install:
	${SUBST_CMD} -c ${FILESDIR}/mount-archive.desktop.in \
		${WRKSRC}/mount-archive.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/mount-archive.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
