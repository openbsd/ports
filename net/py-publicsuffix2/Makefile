COMMENT =		pure-Python interface to publicsuffix.org

MODPY_EGG_VERSION =	2.20191221
DISTNAME =		publicsuffix2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

# MIT (software) MPL-2.0 (data)
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

HOMEPAGE =		https://github.com/nexB/python-publicsuffix2

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

# pypi artifact hasn't got any tests
NO_TEST =		YES

.include <bsd.port.mk>
