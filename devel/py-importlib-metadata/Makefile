COMMENT =		library providing an API for accessing packages metadata

MODPY_EGG_VERSION =	4.12.0
DISTNAME =		importlib_metadata-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		https://importlib-metadata.readthedocs.io/

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache Software License
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-zipp${MODPY_FLAVOR}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PEP517 =		setuptools

# disables tests needing pyfakefs and pytest-perf (not in ports)
MODPY_PYTEST_ARGS =	--ignore tests/test_main.py \
			--ignore exercises.py
# ModuleNotFoundError: No module named 'test' (for "test.support")
TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
