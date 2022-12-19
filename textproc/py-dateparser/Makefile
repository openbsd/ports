COMMENT =		Date parsing library designed to parse dates from HTML pages

MODPY_EGG_VERSION =	1.1.4
DISTNAME =		dateparser-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc

HOMEPAGE =		https://github.com/scrapinghub/dateparser/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		devel/py-tzlocal${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			devel/py-regex${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
