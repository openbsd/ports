# $OpenBSD: Makefile,v 1.8 2005/03/15 22:46:21 kurt Exp $

# Requires a JVM
ONLY_FOR_ARCHS=	i386

COMMENT=	"regression testing utility for use with the Java language"

JDK_VERSION=	1.3.1-linux
VERSION=	3.8.1
DISTNAME=	junit${VERSION}
PKGNAME=	junit-${VERSION}
CATEGORIES=	java

HOMEPAGE=	http://www.junit.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=junit/}
EXTRACT_SUFX=	.zip 

RUN_DEPENDS=	:jdk*->1.3:devel/jdk/1.3-linux

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/${PKGNAME}
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/${PKGNAME}
	${INSTALL_DATA} ${WRKSRC}/README.html ${PREFIX}/share/java/${PKGNAME}
	${INSTALL_DATA} ${WRKSRC}/cpl-v10.html ${PREFIX}/share/java/${PKGNAME}
	cp ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/${PKGNAME}
	cp -R ${WRKSRC}/doc ${PREFIX}/share/java/${PKGNAME}
	cp -R ${WRKSRC}/javadoc ${PREFIX}/share/java/${PKGNAME}
	cp -R ${WRKSRC}/junit ${PREFIX}/share/java/${PKGNAME} 

.include <bsd.port.mk> 
