# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:42 sthen Exp $

COMMENT =		register CLI commands via setuptools entry-points

MODPY_EGG_VERSION =	1.0.4
DISTNAME =		click-plugins-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-plugins

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
