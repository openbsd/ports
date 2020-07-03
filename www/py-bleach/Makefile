# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:18 sthen Exp $

COMMENT =		easy whitelist-based HTML-sanitizing tool

MODPY_EGG_VERSION =	2.0.0
DISTNAME =		bleach-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		2

HOMEPAGE =		https://github.com/mozilla/bleach

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-html5lib${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

.include <bsd.port.mk>
