# $OpenBSD: Makefile,v 1.30 2020/07/03 21:12:43 sthen Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	19.8.18
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		0

CATEGORIES =		devel

# LGPL2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	src

TEST_ENV =		PYTHONPATH=${WRKSRC}/lib

# Upstream has "dropped support" for python2, but it still
# works, but it should be checked before future updates

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
