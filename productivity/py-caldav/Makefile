COMMENT =		caldav client library for Python

MODPY_EGG_VERSION =	1.2.1
GH_ACCOUNT =		python-caldav
GH_PROJECT =		caldav
GH_TAGNAME =		v${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		productivity net

# Apache 2.0 - GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-icalendar${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-vobject,python3${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-tzlocal${MODPY_FLAVOR}

.include <bsd.port.mk>
