# $OpenBSD: Makefile,v 1.1.1.1 2003/06/18 01:31:30 naddy Exp $

COMMENT=	"web page hit counter for Zope"

VERSION=	1.2
DISTNAME=	FSCounter.${VERSION}
PKGNAME=	zope-fscounter-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/andym/FSCounter/	
MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar	

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/zope        

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/FSCounter

ZOPEHOME=	${PREFIX}/lib/zope
PRODUCTSDIR=	${ZOPEHOME}/lib/python/Products

INSTALL_LOC=	${PRODUCTSDIR}/FSCounter
P_SUBDIRS=	www

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/*.dtml ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/*.py ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${INSTALL_LOC}
.for i in ${P_SUBDIRS}
	${INSTALL_DATA_DIR} ${INSTALL_LOC}/$i
	${INSTALL_DATA} `find ${WRKDIST}/$i -maxdepth 1 -type f` \
		${INSTALL_LOC}/$i
.endfor
	chown -R ${LIBOWN}:${LIBGRP} ${PRODUCTSDIR}

.include <bsd.port.mk>
