COMMENT =		data validation using Python type hints

MODPY_DISTV =		2.12.4
DISTNAME =		pydantic-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme
RUN_DEPENDS =		devel/py-typing-extensions \
			devel/py-typing-inspection \
			devel/py-pydantic-core=2.41.5 \
			devel/py-annotated_types

TEST_DEPENDS =		devel/py-test-mock \
			devel/py-test-benchmark \
			devel/py-test-run-parallel \
			devel/py-cloudpickle \
			devel/py-dirty-equals
PORTHOME =		${WRKDIR}

# needs pytest-examples
MODPY_PYTEST_ARGS= --ignore tests/test_docs.py

.include <bsd.port.mk>
