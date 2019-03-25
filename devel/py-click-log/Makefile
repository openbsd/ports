# $OpenBSD: Makefile,v 1.4 2019/03/25 14:29:50 kn Exp $

COMMENT =		logging integration for Python click

MODPY_EGG_VERSION =	0.3.2
DISTNAME =		click-log-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-log

MAINTAINER =		Remi Locherer <remi@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
