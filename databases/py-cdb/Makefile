# $OpenBSD: Makefile,v 1.4 2007/10/08 08:22:39 steven Exp $

COMMENT=	Python extension module for accessing cdb databases

DISTNAME=	python-cdb-0.32
PKGNAME=	${DISTNAME:S/python/py/}p1
CATEGORIES=	databases

HOMEPAGE=	http://pilcrow.madison.wi.us/

MAINTAINER=	Lars Hansson <lars@unet.net.ph>

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
