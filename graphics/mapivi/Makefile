# $OpenBSD: Makefile,v 1.7 2010/10/24 21:21:01 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	image viewer and organizer

DISTNAME=	mapivi097
PKGNAME=	mapivi-0.97
CATEGORIES=	graphics x11

HOMEPAGE=	http://mapivi.de.vu/

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mapivi/}

RUN_DEPENDS=	:p5-Tk->=804.025:x11/p5-Tk \
		::graphics/p5-Image-ExifTool \
		::graphics/p5-Image-Info \
		::graphics/p5-Image-MetaData-JPEG \
		::graphics/ImageMagick \
		::graphics/jhead \
		::x11/p5-Tk-Splash

NO_BUILD=	Yes
NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/mapivi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mapivi
	${INSTALL_DATA_DIR} ${PREFIX}/share/mapivi/PlugIns
	${INSTALL_DATA_DIR} ${PREFIX}/share/mapivi/pics
	${INSTALL_DATA_DIR} ${PREFIX}/share/mapivi/icons
	${INSTALL_DATA} ${WRKSRC}/pics/* ${PREFIX}/share/mapivi/pics
	${INSTALL_DATA} ${WRKSRC}/icons/* ${PREFIX}/share/mapivi/icons
	${INSTALL_SCRIPT} ${WRKSRC}/PlugIns/* ${PREFIX}/share/mapivi/PlugIns
	${INSTALL_SCRIPT} ${WRKSRC}/mapivi ${PREFIX}/bin

.include <bsd.port.mk>
