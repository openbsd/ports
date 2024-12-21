COMMENT =	port of Google's libphonenumber library

MODPY_DISTV =	8.13.52
DISTNAME =	phonenumbers-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	telephony devel

HOMEPAGE =	https://github.com/daviddrysdale/python-phonenumbers

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests/*.py

MAKE_ENV +=	LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
