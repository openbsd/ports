# $OpenBSD: Makefile,v 1.10 2015/12/19 20:47:02 bentley Exp $

COMMENT=	book about Python for experienced programmers

VERSION=	5.4
PKGNAME=	diveintopython-${VERSION}
REVISION=	1
DISTNAME=	diveintopython-html-${VERSION}
DISTNAMEPRINT=	diveintopython-pdf-${VERSION}
CATEGORIES=	books

HOMEPAGE=	http://diveintopython.org/

MAINTAINER=	Aleksander Piotrowski <pelotasplus@gmail.com>

# FDL
PERMIT_PACKAGE_CDROM=	Yes

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
