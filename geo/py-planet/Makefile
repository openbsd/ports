COMMENT =	client library and CLI for Planet's public API

MODPY_EGG_VERSION =	2.9
DISTNAME =	planet-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	geo

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS +=	devel/py-click${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-futures${MODPY_FLAVOR}
TEST_DEPENDS =	devel/py-mock${MODPY_FLAVOR} \
		www/py-requests-mock${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
