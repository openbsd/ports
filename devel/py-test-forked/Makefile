COMMENT =		run each test in a forked subprocess

MODPY_EGG_VERSION =	0.2

DISTNAME =		pytest-forked-${MODPY_EGG_VERSION}
PKGNAME =		py-test-forked-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-forked

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =	python3

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}>=2.6.0

NO_TEST =		Yes

.include <bsd.port.mk>
