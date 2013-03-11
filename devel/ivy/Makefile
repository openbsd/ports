# $OpenBSD: Makefile,v 1.20 2013/03/11 10:50:09 espie Exp $

COMMENT=		dependency manager for Java

VERSION=		1.4.1
DISTNAME=		ivy-${VERSION}-bin
PKGNAME=		ivy-${VERSION}
REVISION =		11
CATEGORIES=		devel
WRKDIST=		${WRKDIR}/ivy-${VERSION}

HOMEPAGE=		http://incubator.apache.org/ivy/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.jaya.free.fr/downloads/ivy/${VERSION}/
EXTRACT_SUFX=		.zip

MODULES=	java
MODJAVA_VER=	1.4+
MODJAVA_JRERUN=	yes

RUN_DEPENDS=	java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

do-configure:
	sed -e 's!@IVYDIR@!${MODJAVA_JAR_DIR}/ivy/!' \
	    -e 's!@JAVAPH@!${PREFIX}/bin/javaPathHelper!' \
	    files/ivy.in > ${WRKSRC}/ivy

# Note: we omit ivy-core.jar, since it's the same as ivy.jar with
# the ant tasks removed.
do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}/ivy/ ${MODJAVA_SHARE_DIR}/ivy/
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${MODJAVA_SHARE_DIR}/ivy/
	${INSTALL_DATA} ${WRKSRC}/ivy-${VERSION}.jar \
		${MODJAVA_JAR_DIR}/ivy/ivy.jar
	# Preliminary hack.
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar ${MODJAVA_JAR_DIR}/ivy/
	${INSTALL_SCRIPT} ${WRKSRC}/ivy ${PREFIX}/bin

.include <bsd.port.mk>
