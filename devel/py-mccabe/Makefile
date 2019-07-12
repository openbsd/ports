# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:50 sthen Exp $

COMMENT =		McCabe complexity checker for Python

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		mccabe-${MODPY_EGG_VERSION}
PKGNAME =		py-mccabe-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/flintwork/mccabe

# Expat
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
