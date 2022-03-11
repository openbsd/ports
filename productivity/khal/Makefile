COMMENT =		standards based terminal calendar

MODPY_EGG_VERSION =	0.10.4
DISTNAME =		khal-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		productivity

HOMEPAGE =		https://lostpackets.de/khal/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-click-log${MODPY_FLAVOR} \
			devel/py-configobj${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-icalendar${MODPY_FLAVOR} \
			devel/py-setproctitle${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			devel/py-tzlocal${MODPY_FLAVOR} \
			devel/py-urwid${MODPY_FLAVOR} \
			devel/py-xdg${MODPY_FLAVOR} \
			productivity/vdirsyncer
TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
