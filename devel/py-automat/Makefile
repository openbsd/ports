COMMENT =		finite-state machines in Python

MODPY_EGG_VERSION =	20.2.0

DISTNAME =		Automat-${MODPY_EGG_VERSION}
PKGNAME =		py-automat-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/glyph/Automat

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib/automat/_test/

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR} \
			textproc/py-m2r${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \

TEST_DEPENDS =		devel/py-twisted${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
