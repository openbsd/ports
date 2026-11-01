COMMENT =		library for discovering Python interpreters

MODPY_DISTV =		1.9.0
DISTNAME =		python_discovery-${MODPY_DISTV}
PKGNAME =		py-python-discovery-${MODPY_DISTV}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/tox-dev/python-discovery

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme

RUN_DEPENDS =		sysutils/py-filelock \
			sysutils/py-platformdirs

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-test-mock

# needs vermin
MODPY_PYTEST_IGNORE =	tests/test_py_info_collect.py

.include <bsd.port.mk>
