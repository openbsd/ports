# $OpenBSD: Makefile,v 1.4 2007/09/15 21:34:35 simon Exp $

COMMENT=	book about Python for experienced programmers

VERSION=	5.4
PKGNAME=	diveintopython-${VERSION}
DISTNAME=	diveintopython-html-${VERSION}
DISTNAMEPRINT=	diveintopython-pdf-${VERSION}
CATEGORIES=	books 

HOMEPAGE=	http://diveintopython.org/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# FDL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.zip
# UNZIP is set here because flag -o has to be used.
UNZIP=		unzip -o

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAMEPRINT}${EXTRACT_SUFX}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

SUBST_VARS=	PORTSDIR

DOC=		${PREFIX}/share/doc/diveintopython
WRKSRC=		${WRKDIR}/diveintopython-${VERSION}

do-install:
	${INSTALL_DATA_DIR} ${DOC}
	cd ${WRKSRC}; tar cf - py html | tar xf - -C ${DOC}

	${INSTALL_DATA_DIR} ${DOC}/print
	${INSTALL_DATA} ${WRKSRC}/diveintopython.pdf ${DOC}/print

	${CHOWN} -R ${DOCOWN}:${DOCGRP} ${DOC}

.include <bsd.port.mk>
