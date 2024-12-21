COMMENT =	JSON Web Token implementation in Python

MODPY_DISTV =	2.8.0
DISTNAME =	PyJWT-${MODPY_DISTV}
PKGNAME =	py-jwt-${MODPY_DISTV}
CATEGORIES =	www
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	1

HOMEPAGE =	http://github.com/jpadilla/pyjwt

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =   security/py-cryptography>=3.4.0

TEST_DEPENDS =	devel/py-test-cov \
		devel/py-test-runner

.include <bsd.port.mk>
