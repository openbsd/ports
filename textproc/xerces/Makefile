# $OpenBSD: Makefile,v 1.16 2002/09/19 06:06:27 kevlo Exp $

COMMENT=	"xml parser for Java"

ONLY_FOR_ARCHS=	i386

JDK_VERSION=	1.4.1
DISTNAME=	Xerces-J-bin.2.1.0
PKGNAME=	xerces-2.1.0
CATEGORIES=	textproc

HOMEPAGE=	http://xml.apache.org/xerces2-j/index.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://xml.apache.org/dist/xerces-j/

TAR?=		gtar

BUILD_DEPENDS=	:gtar-*:archivers/gtar 
RUN_DEPENDS=    ::devel/jdk/1.4-linux

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}/xerces-2_1_0

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/xerces-2_1_0
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/xerces-2_1_0
	cp ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/xerces-2_1_0
	cp -R ${WRKSRC}/docs ${PREFIX}/share/java/xerces-2_1_0
	cp -R ${WRKSRC}/data ${PREFIX}/share/java/xerces-2_1_0
	cp -R ${WRKSRC}/samples ${PREFIX}/share/java/xerces-2_1_0

.include <bsd.port.mk>
