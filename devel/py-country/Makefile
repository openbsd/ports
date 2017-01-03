# $OpenBSD: Makefile,v 1.19 2017/01/03 19:19:48 landry Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	17.1.2
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest src

.include <bsd.port.mk>
