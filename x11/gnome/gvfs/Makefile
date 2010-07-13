# $OpenBSD: Makefile,v 1.30 2010/07/13 16:14:28 ajacoutot Exp $

COMMENT-main=	GNOME virtual file system
COMMENT-smb=	samba module for GVFS

GNOME_PROJECT=	gvfs
GNOME_VERSION=	1.6.3

PKGNAME-main=	${DISTNAME}
PKGNAME-smb=	${GNOME_PROJECT}-smb-${GNOME_VERSION}

SHARED_LIBS +=  gvfscommon           3.0      # .0.0
SHARED_LIBS +=  gvfscommon-dnssd     1.0      # .0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += ORBit-2 c dbus-1 dbus-glib-1 gconf-2 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread util
WANTLIB += eggdbus-1 expat gpg-error z gcrypt gnome-keyring.>=6

LIB_DEPENDS=	:libgnome-keyring-*:x11/gnome/libgnome-keyring

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += bz2 gnutls lzma m proxy soup-2.4 sqlite3
WANTLIB-main += tasn1 xml2 archive soup-gnome-2.4.>=1
WANTLIB-main += avahi-client avahi-common avahi-glib

DESKTOP_FILES=	Yes

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		::archivers/libarchive \
		::devel/libsoup,-gnome \
		::net/avahi
RUN_DEPENDS-main= :gamin-*:sysutils/gamin,-server

WANTLIB-smb += ${WANTLIB} gvfscommon.>=2 smbclient
LIB_DEPENDS-smb= ${LIB_DEPENDS} \
		::${BASE_PKGPATH},-main \
		::net/samba

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
		--with-bash-completion-dir="${PREFIX}/share/gvfs"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS+=	GNOME_VERSION

MULTI_PACKAGES=		-main
PSEUDO_FLAVORS=		no_smb
FLAVOR?=

.if ${FLAVOR:L:Mno_smb}
CONFIGURE_ARGS+= --disable-samba
.else
CONFIGURE_ARGS+= --enable-samba
MULTI_PACKAGES+= -smb
.endif

post-install:
	${SUBST_CMD} -c ${FILESDIR}/mount-archive.desktop.in \
		${WRKSRC}/mount-archive.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/mount-archive.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
