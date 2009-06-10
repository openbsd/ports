# $OpenBSD: Makefile,v 1.48 2009/06/10 15:23:54 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Virtual File System
COMMENT-smb=		samba module for gnome-vfs2

GNOME_PROJECT=		gnome-vfs
GNOME_VERSION=		2.24.1
PKGNAME-main=		gnome-vfs2-${VERSION}p4
PKGNAME-smb=		gnome-vfs2-smb-${VERSION}p3
MULTI_PACKAGES=		-main -smb

SHARED_LIBS +=	gnomevfs-2           2400.0   # .2400.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto dbus-1 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pcre ssl util z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data
LIB_DEPENDS=		ORBit-2.>=2::devel/ORBit2 \
			xml2.>=9::textproc/libxml \
			dbus-glib-1.>=3::x11/dbus-glib
# only build the -main subpackage to prevent cyclic dependency
LIB_DEPENDS+=		avahi-client,avahi-common,avahi-glib::net/avahi,no_gtk,no_qt3,no_qt4
RUN_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data

WANTLIB-main=		${WANTLIB} c asn1 gssapi krb5 pthread rpcsvc stdc++
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			cdda_interface,cdda_paranoia::audio/cdparanoia \
			bz2.>=10::archivers/bzip2 \
			fam::sysutils/fam

LIB_DEPENDS-smb=	${LIB_DEPENDS} \
			smbclient::net/samba \
			gnomevfs-2.>=2400::x11/gnome/vfs2
RUN_DEPENDS-smb=	${RUN_DEPENDS}

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-vfs2

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--enable-cdda \
			--enable-avahi \
			--disable-howl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-vfs2

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgnomevfs/xdgmime.c

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
