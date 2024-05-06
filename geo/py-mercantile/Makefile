COMMENT =	spherical mercator coordinate and tile utilities

MODPY_EGG_VERSION =	1.2.1
DISTNAME =	mercantile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	geo
MAINTAINER =	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-click${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
