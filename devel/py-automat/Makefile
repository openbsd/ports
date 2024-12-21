COMMENT =		finite-state machines in Python

MODPY_DISTV =	22.10.0

DISTNAME =		Automat-${MODPY_DISTV}
PKGNAME =		py-automat-${MODPY_DISTV}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/glyph/Automat

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
#MODPY_PYTEST_ARGS =	lib/automat/_test/

RUN_DEPENDS =		devel/py-attrs \
			devel/py-six

TEST_DEPENDS =		devel/py-twisted \
			devel/py-test-benchmark

.include <bsd.port.mk>
