# $OpenBSD: Makefile,v 1.19 2003/11/15 15:12:55 sturm Exp $

COMMENT=	"xml parser for Java"

ONLY_FOR_ARCHS=	i386

JDK_VERSION=	1.3.1
DISTNAME=	Xerces-J-bin.2.4.0
PKGNAME=	xerces-2.4.0
CATEGORIES=	textproc

HOMEPAGE=	http://xml.apache.org/xerces2-j/index.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Apache
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://xml.apache.org/dist/xerces-j/

TAR?=		gtar

BUILD_DEPENDS=	:gtar-*:archivers/gtar 
RUN_DEPENDS=    ::devel/jdk/1.3-linux

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/xerces-2_4_0

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/xerces-2_4_0
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/xerces-2_4_0
	cp ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/xerces-2_4_0
	cp -R ${WRKSRC}/docs ${PREFIX}/share/java/xerces-2_4_0
	cp -R ${WRKSRC}/data ${PREFIX}/share/java/xerces-2_4_0
	cp -R ${WRKSRC}/samples ${PREFIX}/share/java/xerces-2_4_0

.include <bsd.port.mk>
