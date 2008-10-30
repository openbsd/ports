# $OpenBSD: Makefile,v 1.1.1.1 2008/10/30 11:38:28 mbalmer Exp $

COMMENT=	generic form generator for Plone

VERSION=	1.2.4
DISTNAME=	ploneformgen-${VERSION:S/./-/g}
PKGNAME=	plone-formgen-${VERSION}

CATEGORIES=	www
HOMEPAGE=	http://plone.org/products/ploneformgen

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

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
