# $OpenBSD: Makefile,v 1.8 2016/01/07 21:35:27 jasper Exp $

PORTROACH=		limit:^0\.1
PORTROACH_COMMENT=	py-puppetdb >= 0.2.0 only support PuppetDB >= 3

COMMENT=		library for working with the PuppetDB API

MODPY_EGG_VERSION=	0.1.1
DISTNAME=		pypuppetdb-${MODPY_EGG_VERSION}
PKGNAME=		py-puppetdb-${MODPY_EGG_VERSION}
CATEGORIES=		databases www
REVISION=		1

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

MODPY_PI =		Yes

RUN_DEPENDS=		www/py-requests>=1.2.3
BUILD_DEPENDS=		${RUN_DEPENDS}

# Requires unported tox
NO_TEST=		Yes

.include <bsd.port.mk>
