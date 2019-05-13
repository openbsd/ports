# $OpenBSD: Makefile,v 1.26 2019/05/13 18:06:43 danj Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	18.12.8
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		1

CATEGORIES =		devel

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	src

TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
