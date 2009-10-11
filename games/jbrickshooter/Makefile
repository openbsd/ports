# $OpenBSD: Makefile,v 1.1.1.1 2009/10/11 18:47:35 landry Exp $

COMMENT =	brick shooter reflexion game

V=		1.4.0
DISTNAME=	JBrickShooter_v${V}
PKGNAME=	jbrickshooter-${V}
CATEGORIES=	games java

EXTRACT_SUFX=	.zip

HOMEPAGE=	http://code.google.com/p/jbrickshooter/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://jbrickshooter.googlecode.com/files/

MODULES=	java
# hardcode version because we can't get JAVA_HOME as NO_BUILD is set
MODJAVA_VER=	1.7
MODJAVA_JRERUN= Yes

NO_REGRESS=	Yes
NO_BUILD=	Yes

WRKDIST=	${WRKDIR}
PKG_ARCH=	*

do-install:
	@echo "#!/bin/sh\n${LOCALBASE}/jre-1.7.0/bin/java -jar ${TRUEPREFIX}/share/jbrickshooter/jbrickshooter.jar" > ${WRKSRC}/jbrickshooter
	${INSTALL_DATA_DIR} ${PREFIX}/share/jbrickshooter
	cp ${WRKSRC}/jbrickshooter.jar ${PREFIX}/share/jbrickshooter
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/jbrickshooter
	${INSTALL_SCRIPT} ${WRKSRC}/jbrickshooter ${PREFIX}/bin/jbrickshooter

.include <bsd.port.mk>
