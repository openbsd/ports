COMMENT =		krb5 API interface

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		krb5-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/jborean93/pykrb5

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python \
			security/heimdal

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

# tests need missing k5test

.include <bsd.port.mk>
