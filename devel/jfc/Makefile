# $OpenBSD: Makefile,v 1.3 2000/09/05 09:39:07 kevlo Exp $

DISTNAME=	swing1_1_1
PKGNAME=	jfc-1.1.1
CATEGORIES=	devel
NEED_VERSION=   1.230
MASTER_SITES=	http://java.sun.com/products/jfc/

HOMEPAGE=	http://java.sun.com/products/jfc/

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     No
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   No                        

ONLY_FOR_ARCHS= i386

JDK_VERSION=    1.1.8

EXTRACT_SUFX=   .zip

RUN_DEPENDS=	${PREFIX}/jdk${JDK_VERSION}/bin/java::devel/jdk

USE_ZIP=	Yes
NO_BUILD=	Yes

WRKDIST=	${WRKDIR}/swing-1.1.1fcs

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   echo "" ; \
	   echo " You must manually fetch the standard zip format distribution" ; \
           echo " from http:///www.javasoft.com/products/jfc/download.html" ; \
           echo " and place it in ${DISTDIR} then run make again." ; \
	   echo "" ; \
           exit 1 ; \
	fi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/swing1_1_1
	@cp ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/swing1_1_1
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/swing1_1_1
	${INSTALL_DATA} ${WRKSRC}/CHANGES.txt ${PREFIX}/share/java/swing1_1_1
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/java/swing1_1_1
	${INSTALL_DATA} ${WRKSRC}/README.html ${PREFIX}/share/java/swing1_1_1
	${INSTALL_DATA} ${WRKSRC}/README.txt  ${PREFIX}/share/java/swing1_1_1
	@cp -R ${WRKSRC}/doc      ${PREFIX}/share/java/swing1_1_1
	@cp -R ${WRKSRC}/examples ${PREFIX}/share/java/swing1_1_1

.include <bsd.port.mk>
