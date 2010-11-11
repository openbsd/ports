# $OpenBSD: Makefile,v 1.9 2010/11/11 12:35:19 sthen Exp $

COMMENT=	web page hit counter for Zope

VERSION=	1.2
DISTNAME=	FSCounter.${VERSION}
PKGNAME=	zope-fscounter-${VERSION}
REVISION=	0
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/andym/FSCounter/	
MASTER_SITES=	${HOMEPAGE}${VERSION}/
EXTRACT_SUFX=	.tar	

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	www/zope

WRKDIST=	${WRKDIR}/FSCounter

INSTALL_LOC=	${MODZOPE_PRODUCTSDIR}/FSCounter
P_SUBDIRS=	www

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/*.dtml ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/*.py ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/*.pyc ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${INSTALL_LOC}
.for i in ${P_SUBDIRS}
	${INSTALL_DATA_DIR} ${INSTALL_LOC}/$i
	${INSTALL_DATA} `find ${WRKDIST}/$i -maxdepth 1 -type f` \
		${INSTALL_LOC}/$i
.endfor

.include <bsd.port.mk>
