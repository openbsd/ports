# $OpenBSD: Makefile,v 1.6 2003/05/25 22:14:13 naddy Exp $

COMMENT=	"Zope content management framework"

VERSION=	1.3.1
PKGNAME=	zope-cmf-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://cmf.zope.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/CMF-${VERSION}/

DISTNAME=	CMF-${VERSION}

# Zope Public License (ZPL) 2.0 <http://www.zope.org/Resources/ZPL>
BUILD_DEPENDS=	:python-2.1*:lang/python/2.1 \
		:zope->=2.4.3:www/zope
RUN_DEPENDS=	:python-2.1*:lang/python/2.1 \
		:zope->=2.4.3:www/zope

NO_REGRESS=	Yes

ZOPEHOME=	${PREFIX}/lib/zope
PRODUCTSDIR=	${ZOPEHOME}/lib/python/Products

pre-build:
	sed -e "s/'tests'/'tests' and name != 'skins'/" \
		< ${ZOPEHOME}/inst/compilezpy.py \
		> ${WRKDIR}/compilezpy.py

do-build:
	cd ${WRKSRC} && python ${WRKDIR}/compilezpy.py
	cd ${WRKSRC} && python -O ${WRKDIR}/compilezpy.py

do-install:
	${INSTALL_PROGRAM_DIR} ${PRODUCTSDIR}
	for p in Calendar Core Default Topic; do \
		cp -R ${WRKSRC}/CMF$$p ${PRODUCTSDIR}; \
	done
	chown -R ${LIBOWN}:${LIBGRP} ${PRODUCTSDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zope-cmf
	${INSTALL_DATA} ${WRKSRC}/docs/*.stx ${WRKSRC}/docs/*.txt \
		${PREFIX}/share/doc/zope-cmf
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zope-cmf/imgs
	${INSTALL_DATA} ${WRKSRC}/docs/imgs/* \
		${PREFIX}/share/doc/zope-cmf/imgs

.include <bsd.port.mk>

