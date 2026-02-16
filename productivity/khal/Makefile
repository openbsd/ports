COMMENT =		standards based terminal calendar

MODPY_DISTV =		0.13.0
DISTNAME =		khal-${MODPY_DISTV}

CATEGORIES =		productivity

# https://github.com/pimutils/khal
HOMEPAGE =		https://khal.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-click \
			devel/py-click-log \
			devel/py-configobj \
			devel/py-dateutil \
			devel/py-icalendar \
			devel/py-setproctitle \
			devel/py-tz \
			devel/py-tzlocal \
			devel/py-urwid \
			devel/py-xdg
TEST_DEPENDS =		devel/py-hypothesis \
			devel/py-freezegun \
			productivity/vdirsyncer \
			sysutils/py-packaging

.include <bsd.port.mk>
