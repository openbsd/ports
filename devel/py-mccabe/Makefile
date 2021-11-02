# $OpenBSD: Makefile,v 1.16 2021/11/02 00:00:51 sthen Exp $

COMMENT =		McCabe complexity checker for Python

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		mccabe-${MODPY_EGG_VERSION}
PKGNAME =		py-mccabe-${MODPY_EGG_VERSION}
REVISION =		5

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
FLAVOR =	python3

.include <bsd.port.mk>
