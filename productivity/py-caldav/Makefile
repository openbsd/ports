COMMENT=	caldav client library for Python

# N.B. https://github.com/python-caldav/caldav/issues/530
# 2.x.0 releases are expected to done using "requests" as a dep
# 2.x.1 releases are expected to done using "niquests"
# niquests depends on urllib3-future which *overrides* urllib3 in
# a default install. either stick to py-caldav versions using
# "requests", or if porting niquests, be sure to set the env var
# during urllib3-future build to stop it overriding urllib3.
#
# python-caldav 3.x hoping to move to httpx, avoiding these problems
MODPY_DISTV=	2.1.0
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

RUN_DEPENDS=	devel/py-icalendar \
		productivity/py-recurring-ical-events \
		textproc/py-lxml \
		www/py-requests

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
