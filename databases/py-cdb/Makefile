# $OpenBSD: Makefile,v 1.12 2013/03/11 02:52:07 espie Exp $

COMMENT=	Python extension module for accessing cdb databases

DISTNAME=	python-cdb-0.32
PKGNAME=	${DISTNAME:S/python/py/}
REVISION =	8
CATEGORIES=	databases

HOMEPAGE=	http://pilcrow.madison.wi.us/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/python-cdb/

MODULES=	lang/python

WANTLIB=	${MODPY_WANTLIB}

NO_TEST=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-cdb
EXAMPLESDIR=	${PREFIX}/share/examples/py-cdb

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/Example ${EXAMPLESDIR}

.include <bsd.port.mk>
