COMMENT =		FontAwesome icons in PyQt and PySide applications

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		QtAwesome-${MODPY_EGG_VERSION}
PKGNAME =		py-qtawesome-${MODPY_EGG_VERSION}

CATEGORIES =		x11

HOMEPAGE =		https://github.com/spyder-ide/qtawesome

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		x11/py-qtpy${MODPY_FLAVOR}

TEST_DEPENDS =		x11/py-qt5${MODPY_FLAVOR}

# needs qtbot
NO_TEST =		Yes

.include <bsd.port.mk>
