# $OpenBSD: Makefile,v 1.24 2007/07/05 22:50:11 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME Virtual File System

GNOME_PROJECT=		gnome-vfs
GNOME_VERSION=		2.18.1
PKGNAME=		gnome-vfs2-${VERSION}p0
SHARED_LIBS +=	gnomevfs-2       1800.1       # .1800.1

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB += c crypto dbus-1 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pthread rpcsvc ssl stdc++ util z

MODULES=		devel/gettext \
			x11/gnome
BUILD_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data
LIB_DEPENDS=		dbus-glib-1.>=3::x11/dbus-glib \
			fam::sysutils/fam \
			xml2.>=9::textproc/libxml \
			gconf-2.>=5::devel/gconf2 \
			cdda_interface,cdda_paranoia::audio/cdparanoia \
			bz2.>=10::archivers/bzip2 \
			ORBit-2.>=2::devel/ORBit2
RUN_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data

USE_X11=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-vfs2 \
			--disable-schemas-install \
			--enable-openssl \
			--enable-cdda \
			--disable-avahi \
			--disable-howl \
			--disable-samba
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	perl -pi -e "s,/usr/local,${LOCALBASE},g" ${WRKSRC}/libgnomevfs/xdgmime.c

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-vfs2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/gnome-vfs2/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
