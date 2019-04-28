# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:35 sthen Exp $

COMMENT =		nose plugin to add warnings filters

MODPY_EGG_VERSION =	0.1.5
DISTNAME =		nose_warnings_filters-${MODPY_EGG_VERSION}
PKGNAME =		py-nose-warnings-filters-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://github.com/Carreau/nose_warnings_filters

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
