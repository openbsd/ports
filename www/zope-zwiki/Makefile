# $OpenBSD: Makefile,v 1.3 2003/10/11 15:27:00 naddy Exp $

COMMENT=	"Wiki engine for Zope"

VERSION=	0.22.0
DISTNAME=	ZWiki-${VERSION}
PKGNAME=	zope-zwiki-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://zwiki.org/
MASTER_SITES=	http://zwiki.org/releases/

EXTRACT_SUFX=	.tgz

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	zope

WRKDIST=	${WRKDIR}/ZWiki

INSTALL_LOC=	${MODZOPE_PRODUCTSDIR}/ZWiki
P_SUBDIRS=	Extensions content/basic content/tracker \
		dtml images locale skins/default \
		skins/zwiki_plone tests

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC} 
	${INSTALL_DATA} ${WRKDIST}/*.py ${INSTALL_LOC} 
	${INSTALL_DATA} ${WRKDIST}/*.pyc ${INSTALL_LOC} 
	${INSTALL_DATA} ${WRKDIST}/*.txt ${INSTALL_LOC} 
.for i in ${P_SUBDIRS}
	${INSTALL_DATA_DIR} ${INSTALL_LOC}/$i
	${INSTALL_DATA} `find ${WRKDIST}/$i -maxdepth 1 -type f` \
		${INSTALL_LOC}/$i
.endfor

.include <bsd.port.mk>
