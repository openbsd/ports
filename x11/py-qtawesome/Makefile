# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:23 sthen Exp $

COMMENT =		FontAwesome icons in PyQt and PySide applications

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		QtAwesome-${MODPY_EGG_VERSION}
PKGNAME =		py-qtawesome-${MODPY_EGG_VERSION}
CATEGORIES =		x11
REVISION =		0

HOMEPAGE =		https://github.com/spyder-ide/qtawesome

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			x11/py-qtpy${MODPY_FLAVOR}
TEST_DEPENDS =		x11/py-qt5${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	qtawesome

# Wants py-qtbot for one test but doesn't work *with* py-qtbot

FLAVORS =		python3
FLAVOR ?=

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
