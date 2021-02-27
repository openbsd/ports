# $OpenBSD: Makefile,v 1.90 2021/02/27 09:09:13 ajacoutot Exp $

COMMENT=		GNOME Virtual File System

GNOME_PROJECT=		gnome-vfs
GNOME_VERSION=		2.24.4
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		gnome-vfs2-${VERSION}

REVISION=		17

SHARED_LIBS +=	gnomevfs-2           2400.0   # .2400.0

# GPLv2/LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += bz2 c crypto dbus-1 dbus-glib-1 fam ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl lzma
WANTLIB += m pcre pthread ssl util xml2 z

MODULES=		x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/mime-data

LIB_DEPENDS=		archivers/bzip2 \
			sysutils/gamin

MODGCONF2_SCHEMAS_DIR=	gnome-vfs2

CONFIGURE_STYLE=	gnu

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
