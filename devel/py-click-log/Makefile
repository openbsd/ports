# $OpenBSD: Makefile,v 1.1.1.1 2017/03/08 02:40:41 danj Exp $

COMMENT =		logging integration for Python click

MODPY_EGG_VERSION =	0.1.8
DISTNAME =		click-log-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-log

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
