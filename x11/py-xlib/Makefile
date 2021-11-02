# $OpenBSD: Makefile,v 1.7 2021/11/02 00:02:59 sthen Exp $

COMMENT =	 	X11 library for Python

GH_ACCOUNT =		python-xlib
GH_PROJECT =		python-xlib
GH_TAGNAME =		0.31
PKGNAME =		py-xlib-${GH_TAGNAME}
REVISION =		0

CATEGORIES =		x11

# LGPL21+
PERMIT_PACKAGE =	Yes

MODULES=		lang/python

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
