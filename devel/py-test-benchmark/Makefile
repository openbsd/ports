COMMENT =		pytest fixture for benchmarking code

MODPY_EGG_VERSION =	4.0.0
DISTNAME =		pytest-benchmark-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://pytest-benchmark.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			sysutils/py-cpuinfo${MODPY_FLAVOR}
# some tests want pygaljs and aspectlib (not yet in ports)
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-freezegun${MODPY_FLAVOR} \
			graphics/py-pygal${MODPY_FLAVOR} \
			textproc/py-elasticsearch${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
