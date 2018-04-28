# $OpenBSD: Makefile,v 1.2 2018/04/28 14:29:16 ajacoutot Exp $

COMMENT =		library for accessing OGC Web Services

MODPY_EGG_VERSION =	0.16.0
DISTNAME =		OWSLib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		geo devel

HOMEPAGE =	http://geopython.github.io/OWSLib
# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	www/py-requests${MODPY_FLAVOR} \
		geo/py-proj${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR}

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
