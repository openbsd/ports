# $OpenBSD: Makefile,v 1.7 2018/09/19 09:18:44 sthen Exp $

COMMENT =		standards based terminal calendar

MODPY_EGG_VERSION =	0.9.7.dev114+g7932721
DISTNAME =		khal-0.9.9.20180918

CATEGORIES =		productivity

HOMEPAGE =		https://lostpackets.de/khal/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

# XXX normally use pypi and remove the git BUILD_DEPENDS.
# currently this is a mirrored checkout of 79327211 from master which has
# a fix for incompatibility with newer dateutil. setuptools_scm wants
# either a pypi archive or a full git checkout + the git binary to be
# present at build time.
BUILD_DEPENDS =		devel/git
MASTER_SITES =		https://spacehopper.org/mirrors/
#MODPY_PI =		Yes

MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =         ${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-configobj${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-setproctitle${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			devel/py-tzlocal${MODPY_FLAVOR} \
			devel/py-urwid${MODPY_FLAVOR} \
			devel/py-xdg${MODPY_FLAVOR} \
			devel/py-icalendar${MODPY_FLAVOR} \
			productivity/vdirsyncer
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-freezegun${MODPY_FLAVOR}

do-test:
			cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
