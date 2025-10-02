COMMENT =		handling of non-standard X-WR-TIMEZONE iCal property

MODPY_DISTV =		2.0.1
PKGNAME =		py-x-wr-timezone-${MODPY_DISTV}

# Use instead of pypi.org because tarball is incomplete
GH_ACCOUNT =		niccokunzmann
GH_PROJECT =		x-wr-timezone
GH_TAGNAME =		v${MODPY_DISTV}

CATEGORIES =		productivity

# LGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-icalendar \
			devel/py-click \
			devel/py-tzdata

TEST_DEPENDS =		devel/py-tz \
			${FULLPKGNAME}:${BUILD_PKGPATH}

# test_readme.py is unnecessary and adds a dependency
# test/test_issue_4_add_vtimezone.py is missing a fixture
MODPY_PYTEST_ARGS=	--ignore 'test/test_readme.py' \
			--ignore 'test/test_issue_4_add_vtimezone.py'

.include <bsd.port.mk>
