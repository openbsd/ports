# $OpenBSD: Makefile,v 1.2 2007/06/26 09:35:15 sturm Exp $

SHARED_ONLY=	Yes

COMMENT=	beautiful glass-like GTK+ 2.x engine and themes

VERSION=	0.53.1
DISTNAME=	murrine-${VERSION}
PKGNAME=	gtk2-murrine-engine-${VERSION}
CATEGORIES=	x11

HOMEPAGE=	http://cimi.netsons.org/pages/murrine.php

MAINTAINER=	Brad Walker <bradmwalker@cableone.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cimi.netsons.org/media/download_gallery/
MASTER_SITES0=	http://cimi.netsons.org/media/download_gallery/murrine/
DIST_SUBDIR=	${DISTNAME}
DISTFILES=	${DISTNAME}.tar.bz2:0 \
		MurrineThemePack.tar.bz2 \
		MurrinaFancyCandy.tar.bz2 \
		MurrinaVerdeOlivo.tar.bz2 \
		MurrinaAquaIsh.tar.bz2 \
		MurrinaGilouche.tar.bz2 \
		MurrinaLoveGray.tar.bz2

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender cairo expat fontconfig freetype glitz m png z \
		atk-1.0 gmodule-2.0 gobject-2.0 glib-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2

USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu 
CONFIGURE_ARGS+=--enable-animation

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/
	cp -R ${WRKDIR}/Murrina* ${PREFIX}/share/themes/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/themes/*

.include <bsd.port.mk>
