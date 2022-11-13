COMMENT =	run-time type checker for Python

MODPY_EGG_VERSION =	2.13.3

DISTNAME =	typeguard-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

# https://github.com/agronholm/typeguard
HOMEPAGE =	https://typeguard.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
# additional dep needed
MODPY_PYTEST_ARGS =	--ignore tests/mypy

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

.include <bsd.port.mk>
