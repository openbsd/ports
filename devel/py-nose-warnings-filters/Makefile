# $OpenBSD: Makefile,v 1.1.1.1 2016/11/20 09:56:01 shadchin Exp $

COMMENT =		nose plugin to add warnings filters

MODPY_EGG_VERSION =	0.1.5
DISTNAME =		nose_warnings_filters-${MODPY_EGG_VERSION}
PKGNAME =		py-nose-warnings-filters-${MODPY_EGG_VERSION}
CATEGORIES =		devel

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
