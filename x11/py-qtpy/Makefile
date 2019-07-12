# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:20 sthen Exp $

COMMENT =		provides an abstraction layer of various Qt bindings

MODPY_EGG_VERSION =	1.6.0
DISTNAME =		QtPy-${MODPY_EGG_VERSION}
PKGNAME =		py-qtpy-${MODPY_EGG_VERSION}
CATEGORIES =		x11
REVISION =		1

HOMEPAGE =		https://github.com/spyder-ide/qtpy

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
# XXX fails with PORTS_PRIVSEP
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	qtpy/tests

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS +=		devel/py-mock${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	x11

.include <bsd.port.mk>
