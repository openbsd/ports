# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:47 sthen Exp $

COMMENT =		nose plugin to add warnings filters

MODPY_EGG_VERSION =	0.1.5
DISTNAME =		nose_warnings_filters-${MODPY_EGG_VERSION}
PKGNAME =		py-nose-warnings-filters-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		3

HOMEPAGE =		https://github.com/Carreau/nose_warnings_filters

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
