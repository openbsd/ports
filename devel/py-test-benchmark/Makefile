COMMENT =		fixture for benchmarking code

MODPY_EGG_VERSION =	3.4.1
DISTNAME =		pytest-benchmark-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://pytest-benchmark.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			sysutils/py-cpuinfo${MODPY_FLAVOR}
# some tests want graphics/py-pygal (in ports) and pygaljs (not yet)
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-freezegun${MODPY_FLAVOR} \
			textproc/py-elasticsearch${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
