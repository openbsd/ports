COMMENT =		library for accessing OGC Web Services

MODPY_DISTV =	0.35.0
DISTNAME =		owslib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		geo devel

HOMEPAGE =	https://owslib.readthedocs.io/en/${MODPY_DISTV}/
# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =	www/py-requests \
		textproc/py-yaml \
		geo/py-proj \
		devel/py-tz \
		devel/py-dateutil

TEST_DEPENDS =	devel/py-test \
		devel/py-test-httpserver

.include <bsd.port.mk>
