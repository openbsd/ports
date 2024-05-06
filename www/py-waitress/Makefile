COMMENT =		pure-Python WSGI server

MODPY_EGG_VERSION =	2.1.2
DISTNAME =		waitress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src/

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
