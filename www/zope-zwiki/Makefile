# $OpenBSD: Makefile,v 1.13 2005/01/25 20:32:22 xsa Exp $

COMMENT=	"Wiki engine for Zope"

DISTNAME=	ZWiki-0.37.0
PKGNAME=	zope-${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://zwiki.org/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}releases/
EXTRACT_SUFX=	.tgz

MODULES=	www/zope

RUN_DEPENDS=	::www/zope-placelesstranslationservice

WRKDIST=	${WRKDIR}/ZWiki

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - ZWiki | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
