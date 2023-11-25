COMMENT =		configuration system for Python applications

MODPY_EGG_VERSION =	5.13.0
DISTNAME =		traitlets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling
MODPY_PYTEST_ARGS =	traitlets

# no tests in pypi distfile
NO_TEST =		Yes

.include <bsd.port.mk>
