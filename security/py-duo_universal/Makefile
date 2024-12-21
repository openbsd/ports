COMMENT =		Duo Python two-factor authentication

MODPY_DISTV =	2.0.3
DISTNAME =		duo_universal-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		security sysutils

MAINTAINER =		George Rosamond <george@nycbug.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-wheel \
			security/py-cryptography \
			security/py-openssl \
			www/py-jwt \
			www/py-requests

TEST_DEPENDS =		devel/py-mock

.include <bsd.port.mk>
