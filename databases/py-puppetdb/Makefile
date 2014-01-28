# $OpenBSD: Makefile,v 1.4 2014/01/28 19:52:52 jasper Exp $

COMMENT=		library for working with the PuppetDB API

MODPY_EGG_VERSION=	0.1.1
DISTNAME=		pypuppetdb-${MODPY_EGG_VERSION}
PKGNAME=		py-puppetdb-${MODPY_EGG_VERSION}
CATEGORIES=		databases www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pypuppetdb/}

RUN_DEPENDS=		www/py-requests>=1.2.3
BUILD_DEPENDS=		${RUN_DEPENDS}

# Requires unported tox
NO_TEST=		Yes

.include <bsd.port.mk>
