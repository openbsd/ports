COMMENT =		Python implementation of ECDSA cryptography

MODPY_DISTV =		0.19.1
DISTNAME = 		ecdsa-${MODPY_DISTV}
PKGNAME = 		py-${DISTNAME}
REVISION =		1
CATEGORIES = 		security

HOMEPAGE = 		https://github.com/warner/python-ecdsa

MAINTAINER = 		Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	src/ecdsa

RUN_DEPENDS =		devel/py-six
TEST_DEPENDS =		devel/py-hypothesis

.include <bsd.port.mk>
