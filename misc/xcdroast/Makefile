# $OpenBSD: Makefile,v 1.4 2003/02/17 18:10:35 naddy Exp $

COMMENT=		"gtk-based frontend to cdrtools"
DISTNAME=		xcdroast-0.98alpha13
PKGNAME=		xcdroast-0.98a13
CATEGORIES=		misc x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xcdroast/}

HOMEPAGE=		http://www.xcdroast.org/

MAINTAINER=		Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:cdrtools->=2.0:sysutils/cdrtools
LIB_DEPENDS=		gtk.1.2,glib.1.2::x11/gtk+ \
			gdk_pixbuf.2::graphics/gdk-pixbuf

NO_REGRESS=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/src/xpms/xcdricon.xpm \
		${PREFIX}/share/pixmaps/xcdricon.xpm

.include <bsd.port.mk>
