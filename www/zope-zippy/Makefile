# $OpenBSD: Makefile,v 1.1.1.1 2003/06/04 22:00:39 naddy Exp $

COMMENT=	"insert random 'Zippy the Pinhead' quotes in your documents"

# unversioned, so impose a version
VERSION=	1.0	
DISTNAME=	Zippy
PKGNAME=	zope-zippy-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/michel/Products/Zippy/
MASTER_SITES=	${HOMEPAGE}
DIST_SUBDIR=	zope-zippy-${VERSION}
EXTRACT_SUFX=	.tgz	

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/zope        

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/lib/python/Products/Zippy

ZOPEHOME=	${PREFIX}/lib/zope
PRODUCTSDIR=	${ZOPEHOME}/lib/python/Products

ITEMS=	README.txt ZippyTag.py __init__.py yow.lines

do-install:
	${INSTALL_DATA_DIR} ${PRODUCTSDIR}/Zippy
	for p in ${ITEMS}; do \
		cp ${WRKDIST}/$$p ${PRODUCTSDIR}/Zippy; \
	done
	chown -R ${LIBOWN}:${LIBGRP} ${PRODUCTSDIR}

.include <bsd.port.mk>
