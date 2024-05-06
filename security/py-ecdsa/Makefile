COMMENT =		Python implementation of ECDSA cryptography

MODPY_EGG_VERSION = 	0.19.0
DISTNAME = 		ecdsa-${MODPY_EGG_VERSION}
PKGNAME = 		py-${DISTNAME}
CATEGORIES = 		security
REVISION =              0

HOMEPAGE = 		https://github.com/warner/python-ecdsa

MAINTAINER = 		Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	src/ecdsa

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR}

.include <bsd.port.mk>
