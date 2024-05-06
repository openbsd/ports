COMMENT =		test asyncio code with pytest

MODPY_EGG_VERSION =	0.23.5
DISTNAME =		pytest-asyncio-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		0

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

FLAVORS =		python3
FLAVOR =		python3

# needs extra dep pytest_trio
MODPY_PYTEST_ARGS =	--ignore tests/trio/test_fixtures.py
# most tests are ok without self-dep, but some require it to be
# installed for pytest --asyncio-mode==strict to work
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
