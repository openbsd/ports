COMMENT =		Python wrapper for Xvfb, Xephyr and Xvnc

MODPY_DISTV =	3.0
DISTNAME =		PyVirtualDisplay-${MODPY_DISTV}
PKGNAME =		${DISTNAME:L:S/^py/py-/}
REVISION =		3

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

RUN_DEPENDS =		devel/py-easyprocess

.include <bsd.port.mk>
