COMMENT =		data validation using Python type hints

MODPY_EGG_VERSION =	2.8.2
DISTNAME =		pydantic-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-typing-extensions${MODPY_FLAVOR} \
			devel/py-pydantic-core${MODPY_FLAVOR} \
			devel/py-annotated_types${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-cloudpickle${MODPY_FLAVOR} \
			devel/py-dirty-equals${MODPY_FLAVOR}
PORTHOME =		${WRKDIR}

# needs pytest-examples
MODPY_PYTEST_ARGS= --ignore tests/test_docs.py

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
