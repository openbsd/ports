# $OpenBSD: Makefile,v 1.1.1.1 2002/07/14 19:34:28 wilfried Exp $

COMMENT=		"gtk-based frontend to cdrtools"

DISTNAME=		xcdroast-0.98alpha9
PKGNAME=		xcdroast-0.98a9
CATEGORIES=		misc x11

HOMEPAGE=		http://www.xcdroast.org
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xcdroast/}

MAINTAINER=		Jolan Luff <jolan@enteract.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:cdrtools->=1.10:sysutils/cdrtools
LIB_DEPENDS=		gtk.1.2,glib.1.2::x11/gtk+ \
			Imlib.19,gdk_imlib.19::graphics/imlib

USE_X11=		Yes
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xcdroast
	${INSTALL_DATA} ${WRKSRC}/README.nonroot \
		${PREFIX}/share/doc/xcdroast
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/xpms/xcdricon.xpm \
		${PREFIX}/share/pixmaps/xcdricon.xpm

.include <bsd.port.mk>
