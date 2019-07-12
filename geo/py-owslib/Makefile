# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:55 sthen Exp $

COMMENT =		library for accessing OGC Web Services

MODPY_EGG_VERSION =	0.17.1
DISTNAME =		OWSLib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		geo devel

HOMEPAGE =	http://geopython.github.io/OWSLib
# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	www/py-requests${MODPY_FLAVOR} \
		geo/py-proj${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
