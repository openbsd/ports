COMMENT =		X11 library for Python

GH_ACCOUNT =		python-xlib
GH_PROJECT =		python-xlib
GH_TAGNAME =		0.33
PKGNAME =		py-xlib-${GH_TAGNAME}
REVISION =		1

CATEGORIES =		x11

# LGPL21+
PERMIT_PACKAGE =	Yes

MODULES=		lang/python

BUILD_DEPENDS =		devel/py-six
RUN_DEPENDS =		devel/py-six
TEST_DEPENDS =		devel/py-mock

TEST_IS_INTERACTIVE =	x11

MODPY_PYBUILD =		setuptools_scm

.include <bsd.port.mk>
