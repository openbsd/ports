COMMENT =		configuration system for Python applications

MODPY_EGG_VERSION =	5.14.3
DISTNAME =		traitlets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling
MODPY_PYTEST_ARGS =	traitlets

TEST_DEPENDS =		devel/pre-commit${MODPY_FLAVOR} \
			devel/py-argcomplete${MODPY_FLAVOR} \
			devel/py-mypy${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
