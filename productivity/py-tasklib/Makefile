COMMENT =		Python library to interact with Task Warrior

MODPY_DISTV =	2.5.1

DISTNAME =		tasklib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		productivity

HOMEPAGE =		https://github.com/GothenburgBitFactory/tasklib

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tasklib/tests.py

RUN_DEPENDS =		productivity/taskwarrior
TEST_DEPENDS =		devel/py-tzlocal

.include <bsd.port.mk>
