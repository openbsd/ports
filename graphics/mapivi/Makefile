PKG_ARCH=	*

COMMENT=	image viewer and organizer

DISTNAME=	mapivi097
PKGNAME=	mapivi-0.97
REVISION=	4
CATEGORIES=	graphics x11

HOMEPAGE=	http://mapivi.de.vu/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=mapivi/}

RUN_DEPENDS=	x11/p5-Tk>=804.025 \
		graphics/p5-Image-ExifTool \
		graphics/p5-Image-Info \
		graphics/p5-Image-MetaData-JPEG \
		graphics/ImageMagick \
		graphics/jhead \
		x11/p5-Tk-Splash

NO_BUILD=	Yes
NO_TEST=	Yes

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
