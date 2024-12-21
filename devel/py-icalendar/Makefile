COMMENT =		parser/generator of iCalendar files

MODPY_DISTV =	4.0.4
DISTNAME =		icalendar-${MODPY_DISTV}
PKGNAME =		py-icalendar-${MODPY_DISTV}
REVISION =		8

CATEGORIES =		devel

HOMEPAGE =		https://icalendar.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	src/icalendar/tests

RUN_DEPENDS =		devel/py-dateutil \
			devel/py-tz
TEST_DEPENDS =		devel/py-coverage \
			devel/py-hypothesis

.include <bsd.port.mk>
