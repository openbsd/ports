# $OpenBSD: Makefile,v 1.1.1.1 2018/08/16 18:25:10 danj Exp $

COMMENT =	decorator for caching properties in classes

MODPY_EGG_VERSION = 1.4.3
DISTNAME =	cached-property-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS +=		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
