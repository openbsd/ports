COMMENT =		standards based terminal calendar

MODPY_DISTV =		0.11.2
DISTNAME =		khal-${MODPY_DISTV}
REVISION =		3

CATEGORIES =		productivity

# https://github.com/pimutils/khal
HOMEPAGE =		https://lostpackets.de/khal/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-atomicwrites \
			devel/py-click \
			devel/py-click-log \
			devel/py-configobj \
			devel/py-dateutil \
			devel/py-icalendar \
			devel/py-setproctitle \
			devel/py-tz \
			devel/py-tzlocal \
			devel/py-urwid \
			devel/py-xdg \
			productivity/vdirsyncer
TEST_DEPENDS =		devel/py-hypothesis \
			devel/py-freezegun \
			sysutils/py-packaging

.include <bsd.port.mk>
