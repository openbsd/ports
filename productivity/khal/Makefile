# $OpenBSD: Makefile,v 1.8 2019/03/18 10:49:05 jung Exp $

COMMENT =		standards based terminal calendar

MODPY_EGG_VERSION =	0.9.10
DISTNAME =		khal-${MODPY_EGG_VERSION}

CATEGORIES =		productivity

HOMEPAGE =		https://lostpackets.de/khal/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-configobj${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-icalendar${MODPY_FLAVOR} \
			devel/py-setproctitle${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			devel/py-tzlocal${MODPY_FLAVOR} \
			devel/py-urwid${MODPY_FLAVOR} \
			devel/py-xdg${MODPY_FLAVOR} \
			productivity/vdirsyncer
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

TEST_ENV +=		LC_CTYPE=C.UTF-8

do-test:
		cd ${WRKSRC} && exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
			${MODPY_BIN} -m pytest

.include <bsd.port.mk>
