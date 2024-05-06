COMMENT =	better dates and times for Python

MODPY_EGG_VERSION =	1.2.3
DISTNAME =	arrow-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
HOMEPAGE =	https://arrow.readthedocs.io
REVISION =	1

# Apache 2.0
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR}
TEST_DEPENDS =	devel/py-simplejson${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
