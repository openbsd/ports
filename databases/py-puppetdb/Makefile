# $OpenBSD: Makefile,v 1.23 2020/07/03 21:12:37 sthen Exp $

COMMENT=		library for working with the PuppetDB API

MODPY_EGG_VERSION=	2.2.0
DISTNAME=		pypuppetdb-${MODPY_EGG_VERSION}
PKGNAME=		py-puppetdb-${MODPY_EGG_VERSION}
CATEGORIES=		databases www
REVISION=		0

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
