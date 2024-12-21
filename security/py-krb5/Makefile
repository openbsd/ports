COMMENT =		krb5 API interface

MODPY_DISTV =	0.6.0
DISTNAME =		krb5-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://github.com/jborean93/pykrb5

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python \
			security/heimdal

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		lang/cython

# tests need missing k5test

.include <bsd.port.mk>
