# $OpenBSD: Makefile,v 1.21 2006/02/05 18:25:48 steven Exp $

COMMENT=	"xml parser for Java"

DISTNAME=	Xerces-J-bin.2.4.0
PKGNAME=	xerces-2.4.0p0
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
