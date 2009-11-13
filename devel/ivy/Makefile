# $OpenBSD: Makefile,v 1.12 2009/11/13 07:01:15 kili Exp $

COMMENT=		dependency manager for Java

VERSION=		1.4.1
DISTNAME=		ivy-${VERSION}-bin
PKGNAME=		ivy-${VERSION}p5
CATEGORIES=		devel java
WRKDIST=		${WRKDIR}/ivy-${VERSION}

HOMEPAGE=		http://incubator.apache.org/ivy/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.jaya.free.fr/downloads/ivy/${VERSION}/
EXTRACT_SUFX=		.zip

SUBST_VARS=		VERSION

MODULES=	java
MODJAVA_VER=	1.4+
MODJAVA_JRERUN=	yes

RUN_DEPENDS=	::java/javaPathHelper

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-configure:
	sed -e 's!@IVYDIR@!${PREFIX}/share/java/classes/ivy-${VERSION}!' \
	    -e 's!@JAVAPH@!${PREFIX}/bin/javaPathHelper!' \
	    files/ivy.in > ${WRKSRC}/ivy

# Note: we omit ivy-core.jar, since it's the same as ivy.jar with
# the ant tasks removed.
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/ivy-${VERSION}
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/ivy-${VERSION}
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt \
		${PREFIX}/share/java/ivy-${VERSION}
	${INSTALL_DATA} ${WRKSRC}/ivy-${VERSION}.jar \
		${PREFIX}/share/java/classes/ivy-${VERSION}/ivy.jar
	# Preliminary hack.
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar \
		${PREFIX}/share/java/classes/ivy-${VERSION}
	${INSTALL_SCRIPT} ${WRKSRC}/ivy ${PREFIX}/bin

.include <bsd.port.mk>
