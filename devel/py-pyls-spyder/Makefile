COMMENT =		spyder extension for the Python Language Server

MODPY_EGG_VERSION =	0.4.0
DISTNAME =		pyls-spyder-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-python-lsp-server${MODPY_FLAVOR}>=1.0.1

NO_TEST =		Yes

.include <bsd.port.mk>
