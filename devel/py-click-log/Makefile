# $OpenBSD: Makefile,v 1.6 2019/05/15 12:04:35 kmos Exp $

COMMENT =		logging integration for Python click

MODPY_EGG_VERSION =	0.3.2
DISTNAME =		click-log-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-log

MAINTAINER =		Remi Locherer <remi@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
