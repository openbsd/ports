COMMENT =		Jupyter Qt console

MODPY_EGG_VERSION =	5.5.2
DISTNAME =		qtconsole-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		shells

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-ipykernel${MODPY_FLAVOR}>=4.1 \
			devel/py-jupyter_client${MODPY_FLAVOR}>=4.1 \
			devel/py-jupyter_core${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=5.2.2 \
			net/py-zmq${MODPY_FLAVOR}>=17.1 \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR} \
			x11/py-qtpy${MODPY_FLAVOR}>=2.4.0

# XXX: needs qtbot fixture from pytest-qt
MODPY_PYTEST_ARGS =	--ignore qtconsole/tests/test_00_console_widget.py

TEST_DEPENDS =		devel/py-flaky${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
