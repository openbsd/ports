# $OpenBSD: Makefile,v 1.3 2001/03/02 16:06:30 brad Exp $

ONLY_FOR_ARCHS=	i386

JDK_VERSION=	1.1.8
DISTNAME=	Xerces-J-bin.1.2.3
PKGNAME=	xerces-1.2.3
CATEGORIES=	textproc
NEED_VERSION=	1.348

HOMEPAGE=	http://xml.apache.org/xerces-j/index.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://xml.apache.org/dist/xerces-j/

RUN_DEPENDS=    ${LOCALBASE}/jdk${JDK_VERSION}/bin/java::devel/jdk

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}/xerces-1_2_3

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/xerces-1_2_3
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/xerces-1_2_3
	cp ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/xerces-1_2_3
	cp -R ${WRKSRC}/docs ${PREFIX}/share/java/xerces-1_2_3
	cp -R ${WRKSRC}/data ${PREFIX}/share/java/xerces-1_2_3
	cp -R ${WRKSRC}/samples ${PREFIX}/share/java/xerces-1_2_3

.include <bsd.port.mk>
