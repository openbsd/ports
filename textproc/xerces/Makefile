# $OpenBSD: Makefile,v 1.22 2006/08/10 18:26:23 kurt Exp $

COMMENT=	"xml parser for Java"

DISTNAME=	Xerces-J-bin.2.4.0
PKGNAME=	xerces-2.4.0p1
CATEGORIES=	textproc

HOMEPAGE=	http://xml.apache.org/xerces2-j/index.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Apache
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://xml.apache.org/dist/xerces-j/ \
		http://xml.apache.org/dist/xerces-j/old_xerces2/

TAR?=		gtar

MODULES=	java
MODJAVA_VER=	1.3+
MODJAVA_JRERUN=	Yes

BUILD_DEPENDS=	:gtar-*:archivers/gtar 

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
