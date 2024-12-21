COMMENT =		caldav client library for Python

MODPY_DISTV =	1.2.1
GH_ACCOUNT =		python-caldav
GH_PROJECT =		caldav
GH_TAGNAME =		v${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		productivity net

# Apache 2.0 - GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-icalendar \
			textproc/py-lxml \
			textproc/py-vobject \
			www/py-requests

TEST_DEPENDS =		devel/py-tzlocal

.include <bsd.port.mk>
