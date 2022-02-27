# $OpenBSD: Makefile,v 1.10 2022/02/27 13:14:30 sthen Exp $

COMMENT =		register CLI commands via setuptools entry-points

MODPY_EGG_VERSION =	1.1.1
DISTNAME =		click-plugins-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
FLAVOR =		python3

.include <bsd.port.mk>
