# $OpenBSD: Makefile,v 1.69 2011/09/28 09:47:48 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME Virtual File System

GNOME_PROJECT=		gnome-vfs
GNOME_VERSION=		2.24.4

PKGNAME=		gnome-vfs2-${VERSION}

REVISION=		1

SHARED_LIBS +=	gnomevfs-2           2400.0   # .2400.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += crypto dbus-1 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre ssl util z ORBit-2 xml2 dbus-glib-1 c asn1 gssapi krb5
WANTLIB += pthread gio-2.0 bz2 fam

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/mime-data>=2.0.0

LIB_DEPENDS=		archivers/bzip2 \
			sysutils/gamin

MODGCONF2_SCHEMAS_DIR=	gnome-vfs2

CONFIGURE_ARGS+= 	--disable-cdda \
			--disable-avahi \
			--disable-howl \
			--disable-samba
MODGNOME_LDFLAGS=	-pthread
CONFIGURE_ENV=		ac_cv_header_sys_mount_h=yes

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-vfs2

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgnomevfs/xdgmime.c

.include <bsd.port.mk>
