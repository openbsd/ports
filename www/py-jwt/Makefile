COMMENT =	JSON Web Token implementation in Python

MODPY_EGG_VERSION = 2.3.0
DISTNAME =	PyJWT-${MODPY_EGG_VERSION}
PKGNAME =	py-jwt-${MODPY_EGG_VERSION}
CATEGORIES =	www
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	http://github.com/jpadilla/pyjwt

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes
MODPY_PYTEST =	Yes

RUN_DEPENDS =   security/py-cryptography${MODPY_FLAVOR}>=1.4.0

TEST_DEPENDS =	devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-runner${MODPY_FLAVOR}

.include <bsd.port.mk>
