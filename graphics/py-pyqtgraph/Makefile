COMMENT =	pure-python graphics and GUI library

MODPY_DISTV =	0.13.7

DISTNAME =	pyqtgraph-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	https://www.pyqtgraph.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		math/py-numpy>=1.22.0 \
			x11/py-qt5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
