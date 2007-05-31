# $OpenBSD: Makefile,v 1.3 2007/05/31 06:52:23 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	"image viewer and organizer"

DISTNAME=	mapivi091
PKGNAME=	mapivi-0.91p1
CATEGORIES=	graphics x11

HOMEPAGE=	http://mapivi.de.vu/

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tgz

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mapivi/}

RUN_DEPENDS=	:p5-Tk->=804.025:x11/p5-Tk \
		::graphics/p5-Image-Info \
		::graphics/p5-Image-MetaData-JPEG \
		::graphics/ImageMagick \
		::graphics/jhead

USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' ${WRKSRC}/mapivi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mapivi
	${INSTALL_DATA_DIR} ${PREFIX}/share/mapivi/PlugIns
	${INSTALL_DATA} ${WRKSRC}/pics/* ${PREFIX}/share/mapivi/
	${INSTALL_SCRIPT} ${WRKSRC}/PlugIns/* ${PREFIX}/share/mapivi/PlugIns
	${INSTALL_SCRIPT} ${WRKSRC}/mapivi ${PREFIX}/bin

.include <bsd.port.mk>
