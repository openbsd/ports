COMMENT =		console-based visual debugger for Python

# newer versions need urwid_readline
MODPY_EGG_VERSION =	2021.1
DISTNAME =		pudb-${MODPY_EGG_VERSION}
PKGNAME =		py-pudb-${MODPY_EGG_VERSION}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-jedi${MODPY_FLAVOR} \
			devel/py-urwid${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
