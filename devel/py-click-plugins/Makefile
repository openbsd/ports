# $OpenBSD: Makefile,v 1.7 2021/05/21 19:50:24 kmos Exp $

COMMENT =		register CLI commands via setuptools entry-points

MODPY_EGG_VERSION =	1.0.4
DISTNAME =		click-plugins-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

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
