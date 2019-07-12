# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:55 sthen Exp $

COMMENT =		click params for command line interfaces to GeoJSON

MODPY_EGG_VERSION =	0.5.0
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
FLAVOR ?=

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

.include <bsd.port.mk>
