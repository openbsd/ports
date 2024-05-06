COMMENT =		Duo Python two-factor authentication

MODPY_EGG_VERSION =	2.0.3
DISTNAME =		duo_universal-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		security sysutils

MAINTAINER =		George Rosamond <george@nycbug.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
FLAVOR =		python3
FLAVORS =		python3

RUN_DEPENDS =		devel/py-wheel${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			www/py-jwt${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
