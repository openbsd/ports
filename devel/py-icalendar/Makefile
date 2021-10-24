# $OpenBSD: Makefile,v 1.12 2021/10/24 09:28:47 sthen Exp $

COMMENT =		parser/generator of iCalendar files

MODPY_EGG_VERSION =	4.0.4
DISTNAME =		icalendar-${MODPY_EGG_VERSION}
PKGNAME =		py-icalendar-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES =		devel

HOMEPAGE =		https://icalendar.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	src/icalendar/tests

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
