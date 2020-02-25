# $OpenBSD: Makefile,v 1.5 2020/02/25 10:08:49 landry Exp $

COMMENT =		click params for command line interfaces to GeoJSON

MODPY_EGG_VERSION =	0.5.0
DISTNAME =		cligj-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		geo

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

.include <bsd.port.mk>
