# $OpenBSD: Makefile,v 1.1.1.1 2001/09/14 05:58:19 kevlo Exp $

COMMENT=	"regression testing utility for use with the Java language"

ONLY_FOR_ARCHS=	i386

JDK_VERSION=	1.2-blackdown
VERSION=	3.7
DISTNAME=	junit${VERSION}
PKGNAME=	junit-${VERSION}
CATEGORIES=	java
NEED_VERSION=	1.454

HOMEPAGE=	http://www.junit.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	junit
EXTRACT_SUFX=	.zip 

RUN_DEPENDS=	${LOCALBASE}/jdk${JDK_VERSION}/bin/java::devel/jdk/1.2-blackdown

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/${PKGNAME}
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/${PKGNAME}
	${INSTALL_DATA} ${WRKSRC}/README.html ${PREFIX}/share/java/${PKGNAME}
	cp ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/${PKGNAME}
	cp -R ${WRKSRC}/doc ${PREFIX}/share/java/${PKGNAME}
	cp -R ${WRKSRC}/javadoc ${PREFIX}/share/java/${PKGNAME}
	cp -R ${WRKSRC}/junit ${PREFIX}/share/java/${PKGNAME} 

.include <bsd.port.mk> 
