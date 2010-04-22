# $OpenBSD: Makefile,v 1.25 2010/04/22 20:27:05 ajacoutot Exp $

COMMENT-main=	GNOME virtual file system
COMMENT-smb=	samba module for GVFS

GNOME_PROJECT=	gvfs
GNOME_VERSION=	1.6.0

PKGNAME-main=	${DISTNAME}
PKGNAME-smb=	${GNOME_PROJECT}-smb-${GNOME_VERSION}

SHARED_LIBS +=  gvfscommon           3.0      # .0.0
SHARED_LIBS +=  gvfscommon-dnssd     1.0      # .0.0

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
WANTLIB += eggdbus-1 expat gpg-error z gcrypt

LIB_DEPENDS=	gnome-keyring.>=6:libgnome-keyring-*:x11/gnome/libgnome-keyring

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += bz2 gnutls lzma m proxy soup-2.4 sqlite3
WANTLIB-main += tasn1 xml2

DESKTOP_FILES=	Yes

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		archive::archivers/libarchive \
		soup-gnome-2.4.>=1::devel/libsoup,-gnome \
		avahi-client,avahi-common,avahi-glib::net/avahi
RUN_DEPENDS-main= :gamin-*:sysutils/gamin,-server

LIB_DEPENDS-smb= ${LIB_DEPENDS} \
		gvfscommon.>=2::${BASE_PKGPATH},-main \
		smbclient::net/samba

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-cdda \
		--disable-fuse \
		--disable-hal \
		--disable-afc \
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
