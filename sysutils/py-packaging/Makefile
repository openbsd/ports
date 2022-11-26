COMMENT =	core utilities for Python packages

MODPY_EGG_VERSION =	21.3

DISTNAME =	packaging-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/pypa/packaging

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR =	python3

TEST_DEPENDS =		devel/py-pretend${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-parsing${MODPY_FLAVOR}>=2.0.2

.include <bsd.port.mk>
