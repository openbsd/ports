# $OpenBSD: Makefile,v 1.1.1.1 2003/06/04 21:59:14 naddy Exp $

COMMENT=	"insert randomly-selected fortunes in your documents"

VERSION=	0.5.2
DISTNAME=	Fortune-${VERSION}
PKGNAME=	zope-fortune-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/lalo/Fortune/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/zope        

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/lib/python/Products/Fortune

ZOPEHOME=	${PREFIX}/lib/zope
PRODUCTSDIR=	${ZOPEHOME}/lib/python/Products

FORTUNEITEMS=	FortuneTag.py fortunesetup.py README.txt __init__.py

do-install:
	${INSTALL_DATA_DIR} ${PRODUCTSDIR}/Fortune
	for p in ${FORTUNEITEMS}; do \
		cp ${WRKDIST}/$$p ${PRODUCTSDIR}/Fortune; \
	done
	chown -R ${LIBOWN}:${LIBGRP} ${PRODUCTSDIR}

.include <bsd.port.mk>
