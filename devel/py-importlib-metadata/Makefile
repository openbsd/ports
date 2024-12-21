COMMENT =		library providing an API for accessing packages metadata

MODPY_DISTV =	8.5.0
DISTNAME =		importlib_metadata-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

HOMEPAGE =		https://importlib-metadata.readthedocs.io/

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache Software License
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/py-zipp

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

# disables tests needing pyfakefs, pytest-perf, jaraco.test (not in ports)
MODPY_PYTEST_ARGS =	--ignore exercises.py \
			--ignore tests/compat/py312.py \
			--ignore tests/compat/py39.py \
			--ignore tests/compat/test_py39_compat.py \
			--ignore tests/fixtures.py \
			--ignore tests/test_api.py \
			--ignore tests/test_integration.py \
			--ignore tests/test_main.py \
			--ignore tests/test_zip.py
# ModuleNotFoundError: No module named 'test' (for "test.support")
TEST_DEPENDS =		${MODPY_RUN_DEPENDS},-tests

.include <bsd.port.mk>
