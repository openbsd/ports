COMMENT =		Python library for recurrence of iCal events

MODPY_DISTV =		3.8.0
DISTNAME =		recurring_ical_events-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}

CATEGORIES =		productivity
HOMEPAGE =		https://recurring-ical-events.readthedocs.io

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

RUN_DEPENDS =		devel/py-icalendar \
			devel/py-tz \
			devel/py-tzdata \
			productivity/py-x-wr-timezone

# test_readme.py is unnecessary and adds a dependency
MODPY_PYTEST_ARGS=	--ignore 'recurring_ical_events/test/test_readme.py'

post-install:
	rm -rf ${WRKINST}${MODPY_SITEPKG}/recurring_ical_events/test/

.include <bsd.port.mk>
