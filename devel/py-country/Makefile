# $OpenBSD: Makefile,v 1.33 2021/11/02 00:00:47 sthen Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	19.8.18
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		3

CATEGORIES =		devel

# LGPL2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	src

TEST_ENV =		PYTHONPATH=${WRKSRC}/lib

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
