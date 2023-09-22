COMMENT =		black plugin for the Python Language Server

MODPY_EGG_VERSION =	0.4.6
DISTNAME =		pyls-black-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-python-language-server${MODPY_FLAVOR} \
			textproc/py-black${MODPY_FLAVOR}>=19.3b0 \
			textproc/py-toml${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
