# $OpenBSD: Makefile,v 1.1.1.1 2003/01/31 19:08:33 todd Exp $

COMMENT=		"GNOME Virtual File System"

VERSION=		2.0.4.1
DISTNAME=		gnome-vfs-${VERSION}
PKGNAME=		gnome-vfs2-${VERSION}
CATEGORIES=		devel x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-vfs/2.0/}

LIB_DEPENDS=		bonobo-2::x11/gnome/libbonobo \
			bz2::archivers/bzip2 \
			cdda_paranoia,cdda_interface::audio/cdparanoia \
			gconf-2::devel/gconf2

BUILD_DEPENDS=		:pkgconfig->=0.8.0:devel/pkgconfig \
			:gnome-mime-data->=2.0.0:x11/gnome/mime-data
RUN_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-vfs2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-vfs2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-vfs2/

.include <bsd.port.mk>
