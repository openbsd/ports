COMMENT =		pure-Python WSGI server

MODPY_EGG_VERSION =	1.4.4
DISTNAME =		waitress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		5

CATEGORIES =		www

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src/

.include <bsd.port.mk>
