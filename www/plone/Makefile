# $OpenBSD: Makefile,v 1.1.1.1 2003/05/25 18:57:01 naddy Exp $

COMMENT=	"content management system built on top of Zope"

VERSION=	1.0.1
PKGNAME=	plone-${VERSION}
DISTNAME=	CMFPlone${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.plone.org/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=plone/}

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:zope->=2.6.1:www/zope ::www/zope-cmf

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKSRC=		${WRKDIR}/CMFPlone-${VERSION}

ZOPEHOME=	${PREFIX}/lib/zope
PRODUCTSDIR=	${ZOPEHOME}/lib/python/Products

PLONEITEMS=	CMFPlone DCWorkflow Formulator i18n

do-install:
	${INSTALL_PROGRAM_DIR} ${PRODUCTSDIR}
	for p in ${PLONEITEMS}; do \
		cp -Rp ${WRKSRC}/$$p ${PRODUCTSDIR}; \
	done
	chown -R ${LIBOWN}:${LIBGRP} ${PRODUCTSDIR}

.include <bsd.port.mk>
