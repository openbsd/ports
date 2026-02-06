COMMENT=	caldav client library for Python

# N.B. https://github.com/python-caldav/caldav/issues/530
# some 2.x releases are done using "requests" as a dep, some using
# "niquests". check CHANGELOG.md to see which, we only want ones with
# "requests" for now.
# sthen has wip ports of niquests+deps but there are segfaults in
# some of the new deps (and a hidden gotcha in urllib3-future with a
# var to set to avoid it _overriding_ requests if installed).
#
# python-caldav 3.x may move to httpx, which would avoid these problems
MODPY_DISTV=	2.2.4
GH_ACCOUNT=	python-caldav
GH_PROJECT=	caldav
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	productivity net

# either GPLv3+ or Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs

# yes, even though it's hatch
MAKE_ENV=	SETUPTOOLS_SCM_PRETEND_VERSION=${MODPY_DISTV}

RUN_DEPENDS=	textproc/py-lxml \
		www/py-requests \
		productivity/py-recurring-ical-events \
		devel/py-icalendar \
		devel/py-icalendar-searcher<2 \
		net/py-dnspython \
		devel/py-dateutil \
		textproc/py-yaml

TEST_DEPENDS=	devel/py-tzlocal \
		textproc/py-vobject

# skip tests that run against actual servers and that require network access
# and additional dependencies, as well as tests for documentation which is not
# packaged.
MODPY_PYTEST_ARGS= \
		--ignore 'tests/test_caldav.py' \
		--ignore 'tests/test_docs.py' \
		--ignore 'tests/test_examples.py'

.include <bsd.port.mk>
