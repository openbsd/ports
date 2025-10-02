COMMENT =		parser/generator of iCalendar files

MODPY_DISTV =		6.3.1
DISTNAME =		icalendar-${MODPY_DISTV}
PKGNAME =		py-icalendar-${MODPY_DISTV}

CATEGORIES =		devel

HOMEPAGE =		https://icalendar.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs
MODPY_PYTEST_ARGS =	src/icalendar/tests

RUN_DEPENDS =		devel/py-dateutil
TEST_DEPENDS =		devel/py-coverage \
			devel/py-hypothesis

post-install:
	rm -rf ${WRKINST}${MODPY_SITEPKG}/icalendar/tests/

.include <bsd.port.mk>
