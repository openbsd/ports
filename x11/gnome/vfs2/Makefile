# $OpenBSD: Makefile,v 1.23 2007/06/11 13:12:51 martynas Exp $

SHARED_ONLY=		Yes

COMMENT=		"GNOME Virtual File System"

VERSION=		2.18.1
DISTNAME=		gnome-vfs-${VERSION}
PKGNAME=		gnome-vfs2-${VERSION}p0
SHARED_LIBS +=	gnomevfs-2       1800.1       # .1800.1
CATEGORIES=		x11/gnome

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB += c crypto dbus-1 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pthread rpcsvc ssl stdc++ util z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-vfs/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:gnome-mime-data->=2.0.0:x11/gnome/mime-data
LIB_DEPENDS=		dbus-glib-1.>=3::x11/dbus-glib \
			fam::sysutils/fam \
			xml2.>=9::textproc/libxml \
			gconf-2.>=5::devel/gconf2 \
			cdda_interface,cdda_paranoia::audio/cdparanoia \
			bz2.>=10::archivers/bzip2 \
			ORBit-2.>=2::devel/ORBit2
RUN_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
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
