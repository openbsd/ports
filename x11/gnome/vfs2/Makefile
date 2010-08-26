# $OpenBSD: Makefile,v 1.60 2010/08/26 09:19:39 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME Virtual File System

GNOME_PROJECT=		gnome-vfs
GNOME_VERSION=		2.24.3

PKGNAME=		gnome-vfs2-${VERSION}

REVISION=		1

SHARED_LIBS +=	gnomevfs-2           2400.0   # .2400.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto dbus-1 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pcre ssl util z avahi-client avahi-common avahi-glib \
		ORBit-2 xml2 dbus-glib-1 c asn1 gssapi krb5 pthread \
		cdda_interface cdda_paranoia bz2 fam

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data

LIB_DEPENDS=		::net/avahi \
			::x11/dbus-glib \
			::audio/cdparanoia \
			::archivers/bzip2 \
			::sysutils/gamin

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-vfs2

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--enable-cdda \
			--enable-avahi \
			--disable-howl \
			--disable-samba
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-vfs2

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgnomevfs/xdgmime.c

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
