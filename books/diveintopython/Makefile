# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:44 sthen Exp $

COMMENT=	book about Python for experienced programmers

VERSION=	5.4
PKGNAME=	diveintopython-${VERSION}
REVISION=	2
DISTNAME=	diveintopython-html-${VERSION}
DISTNAMEPRINT=	diveintopython-pdf-${VERSION}
CATEGORIES=	books

HOMEPAGE=	http://diveintopython.org/

# FDL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.zip
# UNZIP is set here because flag -o has to be used.
UNZIP=		unzip -o

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAMEPRINT}${EXTRACT_SUFX}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

DOC=		${PREFIX}/share/doc/diveintopython
WRKSRC=		${WRKDIR}/diveintopython-${VERSION}

do-install:
	${INSTALL_DATA_DIR} ${DOC}
	cd ${WRKSRC}; tar cf - py html | tar xf - -C ${DOC}

	${INSTALL_DATA_DIR} ${DOC}/print
	${INSTALL_DATA} ${WRKSRC}/diveintopython.pdf ${DOC}/print

	chown -R ${DOCOWN}:${DOCGRP} ${DOC}

.include <bsd.port.mk>
