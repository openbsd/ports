COMMENT =		Python wrapper for Xvfb, Xephyr and Xvnc

MODPY_EGG_VERSION =	3.0
DISTNAME =		PyVirtualDisplay-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L:S/^py/py-/}
REVISION =		2

CATEGORIES =		x11

HOMEPAGE =		https://github.com/ponty/pyvirtualdisplay

# BSD 2-clauses
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
# disabled tests needs entrypoint2, vncdotool and stop other tests running
MODPY_PYTEST_ARGS =	--ignore tests/vagrant/vagrant_boxes.py \
			--ignore tests/test_race.py \
			--ignore tests/test_xvnc.py
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-easyprocess${MODPY_FLAVOR}

.include <bsd.port.mk>
