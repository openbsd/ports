# $OpenBSD: Makefile,v 1.22 2020/06/13 21:19:17 sebastia Exp $

COMMENT=		library for working with the PuppetDB API

MODPY_EGG_VERSION=	2.2.0
DISTNAME=		pypuppetdb-${MODPY_EGG_VERSION}
PKGNAME=		py-puppetdb-${MODPY_EGG_VERSION}
CATEGORIES=		databases www

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR?=

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR}>=2.22.0 \
			devel/py-six${MODPY_FLAVOR}>=1.13.0
BUILD_DEPENDS=		${RUN_DEPENDS}

# ERROR: toxini file 'tox.ini' not found
NO_TEST =		Yes

.include <bsd.port.mk>
