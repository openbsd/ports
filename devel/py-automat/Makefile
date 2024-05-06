COMMENT =		finite-state machines in Python

MODPY_EGG_VERSION =	22.10.0

DISTNAME =		Automat-${MODPY_EGG_VERSION}
PKGNAME =		py-automat-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/glyph/Automat

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
#MODPY_PYTEST_ARGS =	lib/automat/_test/

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-twisted${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
