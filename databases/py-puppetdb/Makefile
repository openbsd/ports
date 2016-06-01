# $OpenBSD: Makefile,v 1.9 2016/06/01 12:13:18 jasper Exp $

COMMENT=		library for working with the PuppetDB API

MODPY_EGG_VERSION=	0.2.3
DISTNAME=		pypuppetdb-${MODPY_EGG_VERSION}
PKGNAME=		py-puppetdb-${MODPY_EGG_VERSION}
CATEGORIES=		databases www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PI =		Yes

FLAVORS =	       python3
FLAVOR?=

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR}>=1.2.3
BUILD_DEPENDS=		${RUN_DEPENDS}

# ERROR: toxini file 'tox.ini' not found
NO_TEST =		Yes

.include <bsd.port.mk>
