COMMENT=		open source alternative to Microsoft Project

DISTNAME=		projectlibre-1.9.3
CATEGORIES=		productivity
REVISION=		0

HOMEPAGE=		http://www.projectlibre.org/

# Common Public Attribution License; see license/index.html
# Includes anti patent litigation terms etc (similar to Mozilla Public License
# with some changes / additional terms)
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=projectlibre/}

MODULES=	java
MODJAVA_VER=	1.8+

RUN_DEPENDS=	java/javaPathHelper

NO_BUILD=       Yes
NO_TEST=	Yes

PKG_ARCH=       *

do-install:
	${SUBST_PROGRAM} ${FILESDIR}/projectlibre \
		${PREFIX}/bin/projectlibre
	${INSTALL_DATA_DIR} ${PREFIX}/lib/projectlibre/lib/
	${INSTALL_DATA} ${WRKSRC}/projectlibre.jar ${PREFIX}/lib/projectlibre/
	${INSTALL_DATA} ${WRKSRC}/lib/* ${PREFIX}/lib/projectlibre/lib/

.include <bsd.port.mk>
