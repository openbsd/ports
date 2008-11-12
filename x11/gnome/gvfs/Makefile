# $OpenBSD: Makefile,v 1.3 2008/11/12 22:45:26 jasper Exp $

COMMENT=		GNOME virtual file system

GNOME_PROJECT=		gvfs
GNOME_VERSION=		1.0.2
SHARED_LIBS +=	gvfscommon           1.0      # .0.0


# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=	ORBit-2 bz2 c dbus-1 dbus-glib-1 gconf-2 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 m pcre pthread \
		util xml2 z

LIB_DEPENDS=		archive::archivers/libarchive \
			soup-2.4.>=1::devel/libsoup \
			smbclient::net/samba \
			gnome-keyring::x11/gnome/keyring

CONFIGURE_ARGS+=	--disable-gtk-doc \
			--disable-avahi \
			--disable-cdda \
			--disable-fuse \
			--disable-hal \
			--disable-obexftp \
			--disable-gphoto2 \
			--enable-archive \
			--enable-gconf \
			--enable-http \
			--enable-keyring \
			--enable-samba \
			--with-bash-completion-dir="${PREFIX}/share/gvfs"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
