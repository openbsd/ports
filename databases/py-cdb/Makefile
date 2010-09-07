# $OpenBSD: Makefile,v 1.8 2010/09/07 19:21:42 jasper Exp $

COMMENT=	Python extension module for accessing cdb databases

DISTNAME=	python-cdb-0.32
PKGNAME=	${DISTNAME:S/python/py/}
REVISION =	5
CATEGORIES=	databases

HOMEPAGE=	http://pilcrow.madison.wi.us/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/python-cdb/

MODULES=	lang/python

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-cdb
EXAMPLESDIR=	${PREFIX}/share/examples/py-cdb

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/Example ${EXAMPLESDIR}

.include <bsd.port.mk>
