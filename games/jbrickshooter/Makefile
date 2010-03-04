# $OpenBSD: Makefile,v 1.2 2010/03/04 12:03:38 jasper Exp $

COMMENT =	brick shooter reflexion game

V=		1.4.1
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

RUN_DEPENDS=	::java/javaPathHelper

NO_REGRESS=	Yes
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
