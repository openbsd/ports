COMMENT =		pytest plugin that allows multiple failures per test

MODPY_DISTV =		3.0.1
DISTNAME =		pytest_check-${MODPY_DISTV}
PKGNAME =		py-test-check-${MODPY_DISTV}

CATEGORIES =		devel
HOMEPAGE =		https://github.com/okken/pytest-check
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-test \
			sysutils/py-packaging

# Tests skipped due to missing dependencies (not yet ported):
# test_reportlog.py requires pytest-reportlog
# test_thread_runner_compat.py requires pytest-swarm and pytest-freethreaded
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-test-run-parallel

.include <bsd.port.mk>
