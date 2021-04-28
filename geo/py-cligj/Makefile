# $OpenBSD: Makefile,v 1.7 2021/04/28 13:23:36 landry Exp $

COMMENT =		click params for command line interfaces to GeoJSON

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		cligj-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
