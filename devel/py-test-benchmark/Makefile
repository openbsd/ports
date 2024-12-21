COMMENT =		pytest fixture for benchmarking code

MODPY_DISTV =	4.0.0
DISTNAME =		pytest-benchmark-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://pytest-benchmark.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests

RUN_DEPENDS =		devel/py-test \
			sysutils/py-cpuinfo
# some tests want pygaljs and aspectlib (not yet in ports)
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-freezegun \
			graphics/py-pygal \
			textproc/py-elasticsearch

.include <bsd.port.mk>
