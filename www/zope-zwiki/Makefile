# $OpenBSD: Makefile,v 1.4 2003/12/21 11:05:09 sturm Exp $

COMMENT=	"Wiki engine for Zope"

DISTNAME=	ZWiki-0.25.0
PKGNAME=	zope-${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://zwiki.org/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}releases/
EXTRACT_SUFX=	.tgz

MODULES=	zope

WRKDIST=	${WRKDIR}/ZWiki

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - ZWiki | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
