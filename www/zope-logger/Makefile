# $OpenBSD: Makefile,v 1.2 2003/06/30 17:44:12 jolan Exp $

COMMENT=	"logging product for Zope"

VERSION=	1.0.3
DISTNAME=	Logger-${VERSION:S/./-/g}
PKGNAME=	zope-logger-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/Zen/Logger/
MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:zope->=2.1:www/zope	

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKSRC=		${WRKDIR}/Logger

ZOPEHOME=	${PREFIX}/lib/zope
PRODUCTSDIR=	${ZOPEHOME}/lib/python/Products

LOGGERITEMS=	Logger.py README.txt __init__.py

do-install:
	${INSTALL_DATA_DIR} ${PRODUCTSDIR}/Logger
	for p in ${LOGGERITEMS}; do \
		cp ${WRKSRC}/$$p ${PRODUCTSDIR}/Logger; \
	done
	chown -R ${LIBOWN}:${LIBGRP} ${PRODUCTSDIR}

.include <bsd.port.mk>
