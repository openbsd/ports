# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:42 sthen Exp $

COMMENT =		logging integration for Python click

MODPY_EGG_VERSION =	0.3.2
DISTNAME =		click-log-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-log

MAINTAINER =		Remi Locherer <remi@openbsd.org>

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
