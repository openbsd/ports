# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:31 sthen Exp $

COMMENT =		register CLI commands via setuptools entry-points

MODPY_EGG_VERSION =	1.0.4
DISTNAME =		click-plugins-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-plugins

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
