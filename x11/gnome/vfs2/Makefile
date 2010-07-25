# $OpenBSD: Makefile,v 1.58 2010/07/25 08:15:33 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Virtual File System
COMMENT-smb=		samba module for gnome-vfs2

GNOME_PROJECT=		gnome-vfs
GNOME_VERSION=		2.24.3

PKGNAME-main=		gnome-vfs2-${VERSION}
PKGNAME-smb=		gnome-vfs2-smb-${VERSION}

REVISION-main=		0
REVISION-smb=		0

SHARED_LIBS +=	gnomevfs-2           2400.0   # .2400.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto dbus-1 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pcre ssl util z avahi-client avahi-common avahi-glib \
		ORBit-2 xml2 dbus-glib-1

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data
LIB_DEPENDS=		::devel/ORBit2 \
			::textproc/libxml \
			::x11/dbus-glib
LIB_DEPENDS+=		::net/avahi
RUN_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data

WANTLIB-main=		${WANTLIB} c asn1 gssapi krb5 pthread \
			cdda_interface cdda_paranoia bz2 fam.>=1
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			::audio/cdparanoia \
			::archivers/bzip2 \
			::sysutils/gamin

WANTLIB-smb+=		smbclient gnomevfs-2
LIB_DEPENDS-smb=	${LIB_DEPENDS} \
			::net/samba \
			::x11/gnome/vfs2
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

MULTI_PACKAGES=		-main
PSEUDO_FLAVORS=		no_smb
FLAVOR?=

.if ${FLAVOR:L:Mno_smb}
CONFIGURE_ARGS+=	--disable-samba
.else
MULTI_PACKAGES+=	-smb
.endif

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgnomevfs/xdgmime.c

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
