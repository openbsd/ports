# $OpenBSD: Makefile,v 1.9 2013/03/11 11:07:39 espie Exp $

COMMENT =	brick shooter reflexion game

V=		1.5.3
DISTNAME=	JBrickShooter_v${V}
PKGNAME=	jbrickshooter-${V}
REVISION=	1
CATEGORIES=	games

EXTRACT_SUFX=	.zip

HOMEPAGE=	http://code.google.com/p/jbrickshooter/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://jbrickshooter.googlecode.com/files/

MODULES=	java
# hardcode version because we can't get JAVA_HOME as NO_BUILD is set
MODJAVA_VER=	1.7
MODJAVA_JRERUN= Yes

RUN_DEPENDS=	java/javaPathHelper

NO_TEST=	Yes
NO_BUILD=	Yes

WRKDIST=	${WRKDIR}
PKG_ARCH=	*

do-install:
	${SUBST_CMD} -c ${FILESDIR}/jbrickshooter \
		${WRKSRC}/jbrickshooter
	${INSTALL_DATA_DIR} ${PREFIX}/share/jbrickshooter
	cp ${WRKSRC}/jbrickshooter.jar ${PREFIX}/share/jbrickshooter
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/jbrickshooter
	${INSTALL_SCRIPT} ${WRKSRC}/jbrickshooter ${PREFIX}/bin/jbrickshooter

.include <bsd.port.mk>
