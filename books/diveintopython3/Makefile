# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:44 sthen Exp $

COMMENT=	book about Python 3 for experienced programmers

VERSION=	20130531
DISTNAME=	diveintopython3-${VERSION}
CATEGORIES=	books

HOMEPAGE=	http://getpython3.com/diveintopython3/

# Creative Commons Attribution Share-Alike
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://download.tuxfamily.org/jod/books/diveintopython3/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

DOC=		${PREFIX}/share/books/diveintopython3

do-install:
	${INSTALL_DATA_DIR} ${DOC}
	@cp -R ${WRKSRC}/* ${DOC}
	chown -R ${DOCOWN}:${DOCGRP} ${DOC}

.include <bsd.port.mk>
