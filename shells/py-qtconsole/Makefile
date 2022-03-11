COMMENT =		Jupyter Qt console

MODPY_EGG_VERSION =	5.0.3
DISTNAME =		qtconsole-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		shells

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/ipython${MODPY_FLAVOR}>=5.1.0 \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-jupyter_client${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

TEST_ENV =		PY_IGNORE_IMPORTMISMATCH=1

.include <bsd.port.mk>
