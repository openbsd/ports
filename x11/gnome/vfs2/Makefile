# $OpenBSD: Makefile,v 1.12 2004/12/10 20:36:46 marcm Exp $

COMMENT=		"GNOME Virtual File System"

VERSION=		2.8.2
DISTNAME=		gnome-vfs-${VERSION}
PKGNAME=		gnome-vfs2-${VERSION}
CATEGORIES=		devel x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-vfs/2.8/}

MODULES=		devel/gettext

LIB_DEPENDS=		bonobo-2,bonobo-activation::x11/gnome/libbonobo \
			bz2::archivers/bzip2 \
			cdda_paranoia,cdda_interface::audio/cdparanoia \
			gconf-2::devel/gconf2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:gnome-mime-data->=2.0.0:x11/gnome/mime-data
RUN_DEPENDS=		:gnome-mime-data->=2.0.0:x11/gnome/mime-data \
			:shared-mime-info-*:misc/shared-mime-info

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-vfs2
CONFIGURE_ARGS+=	--disable-ipv6
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-vfs2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/gnome-vfs2/

.include <bsd.port.mk>
