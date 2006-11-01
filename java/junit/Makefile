# $OpenBSD: Makefile,v 1.11 2006/11/01 20:47:41 kurt Exp $

COMMENT=	"regression testing utility for use with the Java language"

VERSION=	3.8.1
DISTNAME=	junit${VERSION}
INSTALLDIR=	junit-${VERSION}
PKGNAME=	${INSTALLDIR}p2
CATEGORIES=	java

HOMEPAGE=	http://www.junit.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=junit/}
EXTRACT_SUFX=	.zip 

MODULES=	java
MODJAVA_VER=	1.3+
MODJAVA_JRERUN=	yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/${INSTALLDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/${INSTALLDIR}
	${INSTALL_DATA} ${WRKSRC}/README.html ${PREFIX}/share/java/${INSTALLDIR}
	${INSTALL_DATA} ${WRKSRC}/cpl-v10.html ${PREFIX}/share/java/${INSTALLDIR}
	cp ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/${INSTALLDIR}
	cp -R ${WRKSRC}/doc ${PREFIX}/share/java/${INSTALLDIR}
	cp -R ${WRKSRC}/javadoc ${PREFIX}/share/java/${INSTALLDIR}
	cp -R ${WRKSRC}/junit ${PREFIX}/share/java/${INSTALLDIR}

.include <bsd.port.mk> 
