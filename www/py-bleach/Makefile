# $OpenBSD: Makefile,v 1.7 2019/07/12 20:51:00 sthen Exp $

COMMENT =		easy whitelist-based HTML-sanitizing tool

MODPY_EGG_VERSION =	2.0.0
DISTNAME =		bleach-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		1

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
