COMMENT =		Jupyter Qt console

MODPY_DISTV =	5.5.2
REVISION =		1
DISTNAME =		qtconsole-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		shells

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-ipykernel>=4.1 \
			devel/py-jupyter_client>=4.1 \
			devel/py-jupyter_core \
			devel/py-pexpect \
			devel/py-traitlets>=5.2.2 \
			net/py-zmq>=17.1 \
			sysutils/py-packaging \
			textproc/py-pygments \
			x11/py-qt5 \
			x11/py-qtpy>=2.4.0

# XXX: needs qtbot fixture from pytest-qt
MODPY_PYTEST_ARGS =	--ignore qtconsole/tests/test_00_console_widget.py

TEST_DEPENDS =		devel/py-flaky \
			devel/py-test-cov

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
