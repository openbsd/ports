# $OpenBSD: Makefile,v 1.41 2015/01/21 06:23:35 bentley Exp $

COMMENT=	xml parser for Java

V=		2.9.1
DISTNAME=	Xerces-J-bin.${V}
PKGNAME=	xerces-${V}
REVISION =	10
CATEGORIES=	textproc

HOMEPAGE=	http://xml.apache.org/xerces2-j/index.html

# Apache
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://xml.apache.org/dist/xerces-j/ \
		http://xml.apache.org/dist/xerces-j/old_xerces2/

TAR=		${LOCALBASE}/bin/gtar

MODULES=	java
MODJAVA_VER=	1.3+
MODJAVA_JRERUN=	Yes

BUILD_DEPENDS=	archivers/gtar 

NO_BUILD=	Yes
NO_TEST=	Yes

VFLAT=		${V:S/./_/g}
SUBST_VARS=	VFLAT
WRKDIST=	${WRKDIR}/xerces-${VFLAT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/xerces-${VFLAT}
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/xerces-${VFLAT}
	${INSTALL_DATA} ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/xerces-${VFLAT}
	cp -R ${WRKSRC}/docs ${PREFIX}/share/java/xerces-${VFLAT}
	cp -R ${WRKSRC}/data ${PREFIX}/share/java/xerces-${VFLAT}
	cp -R ${WRKSRC}/samples ${PREFIX}/share/java/xerces-${VFLAT}

.include <bsd.port.mk>
