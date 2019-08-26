# $OpenBSD: Makefile,v 1.1.1.1 2019/08/26 12:30:49 mpi Exp $

COMMENT =	 	X11 library for Python

GH_ACCOUNT =		python-xlib
GH_PROJECT =		python-xlib
GH_TAGNAME =		0.25
PKGNAME =		py-xlib-${GH_TAGNAME}

CATEGORIES =		x11

# LGPL21+
PERMIT_PACKAGE =	Yes

MODULES=		lang/python

BUILD_DEPENDS =		devel/py-six${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
