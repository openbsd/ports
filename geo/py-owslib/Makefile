COMMENT =		library for accessing OGC Web Services

MODPY_DISTV =	0.32.0
DISTNAME =		OWSLib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		geo devel

HOMEPAGE =	http://geopython.github.io/OWSLib
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

TEST_DEPENDS =	devel/py-test

.include <bsd.port.mk>
