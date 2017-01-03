# $OpenBSD: Makefile,v 1.2 2017/01/03 19:19:49 landry Exp $

COMMENT =		plugin to capture log messages

MODPY_EGG_VERSION =	0.7
DISTNAME =		pytest-capturelog-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://bitbucket.org/memedough/pytest-capturelog/overview

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
