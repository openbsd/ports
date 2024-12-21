COMMENT =		configuration system for Python applications

MODPY_DISTV =	5.14.3
DISTNAME =		traitlets-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling
MODPY_PYTEST_ARGS =	traitlets

TEST_DEPENDS =		devel/pre-commit \
			devel/py-argcomplete \
			devel/py-mypy \
			devel/py-test-mock

.include <bsd.port.mk>
