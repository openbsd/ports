# $OpenBSD: Makefile,v 1.2 2017/06/28 18:03:20 shadchin Exp $

COMMENT =		easy whitelist-based HTML-sanitizing tool

MODPY_EGG_VERSION =	2.0.0
DISTNAME =		bleach-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		https://github.com/mozilla/bleach

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-html5lib${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
