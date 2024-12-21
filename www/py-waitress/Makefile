COMMENT =		pure-Python WSGI server

MODPY_DISTV =	2.1.2
DISTNAME =		waitress-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		textproc/py-sphinx

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src/

TEST_DEPENDS =		devel/py-test-cov

.include <bsd.port.mk>
