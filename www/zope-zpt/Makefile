# $OpenBSD: Makefile,v 1.1.1.1 2001/11/23 02:39:15 matt Exp $

COMMENT=	"page templating system for Zope"

VERSION=	1.4.1
PKGNAME=	zope-zpt-${VERSION}
CATEGORIES=	www
NEED_VERSION=	1.500

HOMEPAGE=	http://www.zope.org/Members/4am/ZPT/

MAINTAINER=	Matt Behrens <matt@zigg.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

DISTFILES=	ZTUtils-1.1.3${EXTRACT_SUFX} \
		TAL-${VERSION}${EXTRACT_SUFX} \
		PageTemplates-${VERSION}${EXTRACT_SUFX}

# This software will be included in Zope 2.5, so only depend on the
# 2.4 series.

BUILD_DEPENDS=	python2.1:python-2.1*-threads:lang/python \
		zope-instance:zope-2.4*:www/zope
RUN_DEPENDS=	python2.1:python-2.1*-threads:lang/python \
		zope-instance:zope-2.4*:www/zope

NO_REGRESS=	Yes

ZOPEHOME=	${PREFIX}/lib/zope
PRODUCTSDIR=	${ZOPEHOME}/lib/python/Products

# Fix permissions in the tarballs

post-extract:
	find ${WRKDIR}/* -type d | xargs chmod 755
	find ${WRKDIR}/* -type f | xargs chmod 644

do-build:
	cd ${WRKDIR} && python ${ZOPEHOME}/inst/compilezpy.py
	cd ${WRKDIR} &&	python -O ${ZOPEHOME}/inst/compilezpy.py

do-install:
	${INSTALL_PROGRAM_DIR} ${ZOPEHOME}/lib/python/Products
	cp -R ${WRKSRC}/ZTUtils ${ZOPEHOME}/lib/python
	cp -R ${WRKSRC}/TAL ${ZOPEHOME}/lib/python
	cp -R ${WRKSRC}/PageTemplates ${PRODUCTSDIR}
	${INSTALL_DATA_DIR} ${ZOPEHOME}/import
	mv ${PRODUCTSDIR}/PageTemplates/examples/zpt_examples.zexp \
		${ZOPEHOME}/import
	rmdir ${PRODUCTSDIR}/PageTemplates/examples

.include <bsd.port.mk>

