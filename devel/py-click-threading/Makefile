# $OpenBSD: Makefile,v 1.5 2021/05/21 19:50:24 kmos Exp $

COMMENT =		multithreading in Python click

MODPY_EGG_VERSION =	0.4.3
DISTNAME =		click-threading-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-threading

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
