COMMENT =		Python implementation of ECDSA cryptography

MODPY_DISTV =		0.19.0
DISTNAME = 		ecdsa-${MODPY_DISTV}
PKGNAME = 		py-${DISTNAME}
CATEGORIES = 		security
REVISION =              1

HOMEPAGE = 		https://github.com/warner/python-ecdsa

MAINTAINER = 		Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	src/ecdsa

TEST_DEPENDS =		devel/py-hypothesis

.include <bsd.port.mk>
