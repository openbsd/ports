COMMENT =	support for the scrypt key derivation function

MODPY_EGG_VERSION =	0.8.24

DISTNAME =	scrypt-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	http://bitbucket.org/mhallin/py-scrypt

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	crypto pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools
MODPY_PYTEST_ARGS =	scrypt/tests

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
