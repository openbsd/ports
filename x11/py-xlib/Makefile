COMMENT =		X11 library for Python

GH_ACCOUNT =		python-xlib
GH_PROJECT =		python-xlib
GH_TAGNAME =		0.33
PKGNAME =		py-xlib-${GH_TAGNAME}
REVISION =		0

CATEGORIES =		x11

# LGPL21+
PERMIT_PACKAGE =	Yes

MODULES=		lang/python

BUILD_DEPENDS =		devel/py-six${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	x11

MODPY_PYBUILD =		setuptools_scm

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
