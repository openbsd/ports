COMMENT =	pure-python graphics and GUI library

MODPY_EGG_VERSION =	0.13.4

DISTNAME =	pyqtgraph-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	graphics

HOMEPAGE =	https://www.pyqtgraph.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}>=1.22.0 \
			x11/py-qt5${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	X11

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
