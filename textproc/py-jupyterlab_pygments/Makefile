COMMENT =		pygments theme using jupyterlab CSS variables

# XXX 0.2.0+ requires jupyterlab causing circular dependencies
MODPY_EGG_VERSION =	0.1.2
DISTNAME =		jupyterlab_pygments-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://jupyter.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		textproc/py-pygments${MODPY_FLAVOR}

.include <bsd.port.mk>
