# $OpenBSD: Makefile,v 1.11 2001/09/02 10:08:42 kevlo Exp $

COMMENT=	"xml parser for Java"

ONLY_FOR_ARCHS=	i386

JDK_VERSION=	1.1.8
DISTNAME=	Xerces-J-bin.1.4.3
PKGNAME=	xerces-1.4.3
CATEGORIES=	textproc
NEED_VERSION=	1.402

HOMEPAGE=	http://xml.apache.org/xerces-j/index.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://xml.apache.org/dist/xerces-j/

TAR?=		gtar

BUILD_DEPENDS=	gtar::archivers/gtar 
RUN_DEPENDS=    ${LOCALBASE}/jdk${JDK_VERSION}/bin/java::devel/jdk/1.1 

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}/xerces-1_4_3

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/xerces-1_4_3
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/xerces-1_4_3
	cp ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/xerces-1_4_3
	cp -R ${WRKSRC}/docs ${PREFIX}/share/java/xerces-1_4_3
	cp -R ${WRKSRC}/data ${PREFIX}/share/java/xerces-1_4_3
	cp -R ${WRKSRC}/samples ${PREFIX}/share/java/xerces-1_4_3

.include <bsd.port.mk>
