COMMENT =		data validation using Python type hints

MODPY_EGG_VERSION =	1.10.15
DISTNAME =		pydantic-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-typing-extensions${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-mock${MODPY_FLAVOR}
PORTHOME =		${WRKDIR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
