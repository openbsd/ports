COMMENT =		provides an abstraction layer of various Qt bindings

MODPY_DISTV =		2.4.2
DISTNAME =		qtpy-${MODPY_DISTV}
PKGNAME =		py-qtpy-${MODPY_DISTV}
CATEGORIES =		x11

HOMEPAGE =		https://github.com/spyder-ide/qtpy

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# XXX fails with PORTS_PRIVSEP
MODPY_PYTEST_ARGS =	qtpy/tests

TEST_DEPENDS +=		devel/py-mock \
			x11/py-qt5

TEST_IS_INTERACTIVE =	x11

.include <bsd.port.mk>
