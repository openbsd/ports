# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:46 sthen Exp $

COMMENT =		register CLI commands via setuptools entry-points

MODPY_EGG_VERSION =	1.0.4
DISTNAME =		click-plugins-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-plugins

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
