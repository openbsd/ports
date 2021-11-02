# $OpenBSD: Makefile,v 1.9 2021/11/02 00:01:14 sthen Exp $

COMMENT =		click params for command line interfaces to GeoJSON

MODPY_EGG_VERSION =	0.7.2
DISTNAME =		cligj-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
