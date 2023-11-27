COMMENT =		black plugin for the Python Language Server

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		python-lsp-black-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-python-lsp-server${MODPY_FLAVOR}>=1.4.0 \
			textproc/py-black${MODPY_FLAVOR}>=22.3.0 \
			textproc/py-tomli${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
