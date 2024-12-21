COMMENT =		pure-Python interface to publicsuffix.org

MODPY_DISTV =	2.20191221
DISTNAME =		publicsuffix2-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

# MIT (software) MPL-2.0 (data)
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

HOMEPAGE =		https://github.com/nexB/python-publicsuffix2

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-requests
BUILD_DEPENDS =		www/py-requests

# pypi artifact hasn't got any tests
NO_TEST =		YES

.include <bsd.port.mk>
