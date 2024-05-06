COMMENT =		Python library to interact with Task Warrior

MODPY_EGG_VERSION =	2.5.1

DISTNAME =		tasklib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		productivity

HOMEPAGE =		https://github.com/GothenburgBitFactory/tasklib
MAINTAINER =		Paco Esteban <paco@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tasklib/tests.py

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		productivity/taskwarrior
TEST_DEPENDS =		devel/py-tzlocal${MODPY_FLAVOR}

.include <bsd.port.mk>
