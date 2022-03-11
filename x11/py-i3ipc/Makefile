COMMENT =		Python library to control i3wm and sway

MODPY_EGG_VERSION =	2.2.1
DISTNAME =		i3ipc-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		x11

HOMEPAGE =		https://github.com/altdesktop/i3ipc-python/

# BSD
PERMIT_PACKAGE =	Yes

FLAVORS =	python3
FLAVOR =	python3

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		x11/py-xlib${MODPY_FLAVOR}
TEST_DEPENDS =		i3-*|i3-gaps-*|i3-mousedrag-*:x11/i3

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run-tests.py

.include <bsd.port.mk>
