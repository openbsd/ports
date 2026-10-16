COMMENT =		parser/generator of iCalendar files

MODPY_DISTV =		7.3.0
DISTNAME =		icalendar-${MODPY_DISTV}
PKGNAME =		py-icalendar-${MODPY_DISTV}

CATEGORIES =		devel

# https://github.com/collective/icalendar
# https://icalendar.readthedocs.io/en/stable/changelog.html
HOMEPAGE =		https://icalendar.readthedocs.org

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

RUN_DEPENDS =		devel/py-dateutil \
			devel/py-tzdata
TEST_DEPENDS =		devel/py-coverage \
			devel/py-hypothesis

post-install:
	rm -rf ${WRKINST}${MODPY_SITEPKG}/icalendar/tests/

.include <bsd.port.mk>
