# $OpenBSD: Makefile,v 1.2 2009/09/15 17:37:22 jasper Exp $

COMMENT=	generic form generator for Plone

VERSION=	1.2.4
DISTNAME=	ploneformgen-${VERSION:S/./-/g}
PKGNAME=	plone-formgen-${VERSION}p0

CATEGORIES=	www
HOMEPAGE=	http://plone.org/products/ploneformgen

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/1.2.4/
EXTRACT_SUFX=	.tgz

MODULES=	www/zope
PY_FLAVOR=	python${MODZOPE_PYTHON_VERSION}

WRKDIST=	${WRKDIR}/PloneFormGen

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - PloneFormGen | tar xf - \
		-C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
