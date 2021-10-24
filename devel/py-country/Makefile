# $OpenBSD: Makefile,v 1.32 2021/10/24 09:28:47 sthen Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	19.8.18
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		2

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
