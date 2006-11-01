# $OpenBSD: Makefile,v 1.2 2006/11/01 20:47:41 kurt Exp $

COMMENT=		"dependency manager for Java"

VERSION=		1.4
PKGNAME=		ivy-${VERSION}p0
DISTNAME=		${PKGNAME}-bin
CATEGORIES=		devel java
WRKDIST=		${WRKDIR}/${PKGNAME}

HOMEPAGE=		http://www.jayasoft.org/ivy/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.jayasoft.org/downloads/ivy/${VERSION}/
EXTRACT_SUFX=		.zip

SUBST_VARS=		VERSION

MODULES=	java
MODJAVA_VER=	1.3+
MODJAVA_JRERUN=	yes

RUN_DEPENDS=	::java/javaPathHelper

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-configure:
	sed -e 's!@IVYDIR@!${PREFIX}/share/java/classes/${PKGNAME}!' \
	    -e 's!@JAVAPH@!${PREFIX}/bin/javaPathHelper!' \
	    files/ivy.in > ${WRKSRC}/ivy

# Note: we omit ivy-core.jar, since it's the same as ivy.jar with
# the ant tasks removed.
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/${PKGNAME}
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/${PKGNAME}
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/java/${PKGNAME}
	${INSTALL_DATA} ${WRKSRC}/ivy-${VERSION}.jar	\
		${PREFIX}/share/java/classes/${PKGNAME}/ivy.jar
	# Preliminary hack.
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar ${PREFIX}/share/java/classes/${PKGNAME}
	${INSTALL_SCRIPT} ${WRKSRC}/ivy ${PREFIX}/bin

.include <bsd.port.mk>
