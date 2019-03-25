# $OpenBSD: Makefile,v 1.24 2019/03/25 14:29:50 kn Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	18.12.8
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

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
