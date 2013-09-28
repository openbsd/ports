# $OpenBSD: Makefile,v 1.79 2013/09/28 08:51:32 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME Virtual File System

GNOME_PROJECT=		gnome-vfs
GNOME_VERSION=		2.24.4
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		gnome-vfs2-${VERSION}

REVISION=		10

SHARED_LIBS +=	gnomevfs-2           2400.0   # .2400.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 bz2 c com_err crypto dbus-1 dbus-glib-1 fam ffi
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssapi gthread-2.0
WANTLIB += heimbase krb5 m pcre pthread roken ssl
WANTLIB += util wind xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/mime-data

LIB_DEPENDS=		archivers/bzip2 \
			sysutils/gamin

MODGCONF2_SCHEMAS_DIR=	gnome-vfs2

CONFIGURE_ARGS+= 	--disable-cdda \
			--disable-avahi \
			--disable-howl \
			--disable-samba
CONFIGURE_ENV=		ac_cv_header_sys_mount_h=yes

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-vfs2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgnomevfs/xdgmime.c

post-install:
	rm ${PREFIX}/lib/gnome-vfs-2.0/modules/*.{a,la}

.include <bsd.port.mk>
