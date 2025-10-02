COMMENT =		caldav client library for Python

MODPY_DISTV =		2.0.1
GH_ACCOUNT =		python-caldav
GH_PROJECT =		caldav
GH_TAGNAME =		v${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		productivity net

# Apache 2.0 - GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		hatch-vcs

RUN_DEPENDS =		devel/py-icalendar \
			productivity/py-recurring-ical-events \
			textproc/py-lxml \
			www/py-requests

TEST_DEPENDS =		devel/py-tzlocal \
			textproc/py-vobject

# skip tests that run against actual servers and that require network access
# and additional dependencies, as well as tests for documentation which is not
# packaged.
MODPY_PYTEST_ARGS=	--ignore 'tests/test_caldav.py' \
			--ignore 'tests/test_docs.py' \
			--ignore 'tests/test_examples.py'

MAKE_ENV=		SETUPTOOLS_SCM_PRETEND_VERSION=${MODPY_DISTV}

.include <bsd.port.mk>
