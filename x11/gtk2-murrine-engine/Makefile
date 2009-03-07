# $OpenBSD: Makefile,v 1.5 2009/03/07 14:23:24 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	beautiful glass-like GTK+ 2.x engine and themes

VERSION=	0.53.1
DISTNAME=	murrine-${VERSION}
PKGNAME=	gtk2-murrine-engine-${VERSION}p2
CATEGORIES=	x11

HOMEPAGE=	http://cimitan.com/murrine/

MAINTAINER=	Brad Walker <me@bradmwalker.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/
DIST_SUBDIR=	${DISTNAME}
DISTFILES=	${DISTNAME}.tar.bz2 \
		MurrineThemePack.tar.bz2 \
		MurrinaBlue.tar.bz2 \
		MurrinaElement.tar.gz \
		MurrinaFancyCandy.tar.bz2 \
		MurrinaOransun.tar.gz \
		MurrinaTango.tar.bz2 \
		MurrinaVerdeOlivo.tar.bz2 \
		MurrinaAquaIsh.tar.bz2 \
		MurrinaGilouche.tar.bz2 \
		MurrinaLoveGray.tar.bz2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png z

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
