# $OpenBSD: Makefile,v 1.17 2002/12/01 19:59:31 marcm Exp $

COMMENT=		"GNOME Virtual File System"

DISTNAME=		gnome-vfs-1.0.5
CATEGORIES=		devel x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-vfs/1.0/}

LIB_DEPENDS=		gnome.36::x11/gnome/libs \
			xml.9::textproc/libxml1 \
			gconf-1,gconf-gtk-1::devel/gconf \
			cdda_paranoia,cdda_interface::audio/cdparanoia \
			bz2::archivers/bzip2 \
			gthread::devel/glib

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:gnome-mime-data-*:x11/gnome/mime-data
RUN_DEPENDS=		:gnome-mime-data-*:x11/gnome/mime-data

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" LIBS="-pthread"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-vfs; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-vfs/

.include <bsd.port.mk>
