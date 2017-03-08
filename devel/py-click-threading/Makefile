# $OpenBSD: Makefile,v 1.1.1.1 2017/03/08 02:42:34 danj Exp $

COMMENT =		multithreading in Python click

MODPY_EGG_VERSION =	0.4.3
DISTNAME =		click-threading-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-threading

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
