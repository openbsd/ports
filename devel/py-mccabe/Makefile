# $OpenBSD: Makefile,v 1.11 2019/06/29 21:26:51 danj Exp $

COMMENT =		McCabe complexity checker for Python

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		mccabe-${MODPY_EGG_VERSION}
PKGNAME =		py-mccabe-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/flintwork/mccabe

# Expat
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
