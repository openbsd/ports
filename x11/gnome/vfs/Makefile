# $OpenBSD: Makefile,v 1.27 2007/05/30 09:56:30 jasper Exp $

COMMENT=		"GNOME Virtual File System"

DISTNAME=		gnome-vfs-1.0.5
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		gnomevfs 0.2
CATEGORIES=		devel x11/gnome

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-vfs/1.0/}

LIB_DEPENDS=		gnome.>=36::x11/gnome/libs \
			xml.>=9::textproc/libxml1 \
			gconf-1,gconf-gtk-1::devel/gconf \
			cdda_paranoia,cdda_interface::audio/cdparanoia \
			bz2::archivers/bzip2 \
			gthread::devel/glib

BUILD_DEPENDS=		:gnome-mime-data-*:x11/gnome/mime-data
RUN_DEPENDS=		:gnome-mime-data-*:x11/gnome/mime-data

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		IIOP ORBit ORBitCosNaming ORBitutil X11 Xext Xi gdk \
			glib gmodule gtk m oaf popt pthread wrap z

MODULES=		devel/gettext

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" LIBS="-pthread" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"

USE_X11=		Yes
USE_LIBTOOL=		Yes

# writes to $HOME and other brokenness
NO_REGRESS=		Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-vfs; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-vfs/

.include <bsd.port.mk>
