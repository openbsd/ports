# $OpenBSD: Makefile,v 1.6 2021/05/21 19:50:24 kmos Exp $

COMMENT =	decorator for caching properties in classes

MODPY_EGG_VERSION = 1.5.1
DISTNAME =	cached-property-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# BSD
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS +=		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
