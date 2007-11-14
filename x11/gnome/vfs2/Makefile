# $OpenBSD: Makefile,v 1.26 2007/11/14 14:59:21 martynas Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Virtual File System
COMMENT-smb=		samba module for gnome-vfs2

GNOME_PROJECT=		gnome-vfs
GNOME_VERSION=		2.20.1
PKGNAME=		gnome-vfs2-${VERSION}
PKGNAME-main=		gnome-vfs2-${VERSION}
PKGNAME-smb=		gnome-vfs2-smb-${VERSION}
MULTI_PACKAGES=		-main -smb

SHARED_LIBS +=	gnomevfs-2       2000.0       # .2000.0

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	crypto dbus-1 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pcre ssl util z

MODULES=		devel/gettext \
			x11/gnome
BUILD_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data
LIB_DEPENDS=		ORBit-2.>=2::devel/ORBit2 \
			gconf-2.>=5::devel/gconf2 \
			xml2.>=9::textproc/libxml \
			dbus-glib-1.>=3::x11/dbus-glib
RUN_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data

WANTLIB-main=		${WANTLIB} c pthread rpcsvc stdc++
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			cdda_interface,cdda_paranoia::audio/cdparanoia \
			bz2.>=10::archivers/bzip2 \
			fam::sysutils/fam
RUN_DEPENDS-main=	${RUN_DEPENDS}

WANTLIB-smb=		${WANTLIB}
LIB_DEPENDS-smb=	${LIB_DEPENDS} \
			smbclient::net/samba \
			gnomevfs-2.>=2000::x11/gnome/vfs2
RUN_DEPENDS-smb=	${RUN_DEPENDS}

USE_X11=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-vfs2 \
			--disable-schemas-install \
			--enable-cdda \
			--disable-avahi \
			--disable-howl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	perl -pi -e "s,/usr/local,${LOCALBASE},g" ${WRKSRC}/libgnomevfs/xdgmime.c

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-vfs2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/gnome-vfs2/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
