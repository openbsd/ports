COMMENT =		library providing an API for accessing packages metadata

MODPY_EGG_VERSION =	7.1.0
DISTNAME =		importlib_metadata-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		https://importlib-metadata.readthedocs.io/

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache Software License
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/py-zipp${MODPY_FLAVOR}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

# disables tests needing pyfakefs and pytest-perf (not in ports)
MODPY_PYTEST_ARGS =	--ignore tests/test_main.py \
			--ignore exercises.py
# ModuleNotFoundError: No module named 'test' (for "test.support")
TEST_DEPENDS =		${MODPY_RUN_DEPENDS},-tests

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
