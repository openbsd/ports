COMMENT =		FontAwesome icons in PyQt and PySide applications

MODPY_DISTV =		1.4.0
DISTNAME =		qtawesome-${MODPY_DISTV}
PKGNAME =		py-qtawesome-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		x11

HOMEPAGE =		https://github.com/spyder-ide/qtawesome

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		x11/py-qt6 \
			x11/py-qtpy

# needs qtbot
NO_TEST =		Yes

.include <bsd.port.mk>
