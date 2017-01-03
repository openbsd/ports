# $OpenBSD: Makefile,v 1.7 2017/01/03 19:19:48 landry Exp $

COMMENT =		McCabe complexity checker for Python

MODPY_EGG_VERSION =	0.5.2
DISTNAME =		mccabe-${MODPY_EGG_VERSION}
PKGNAME =		py-mccabe-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/flintwork/mccabe

MAINTAINER =		Bertrand Janin <b@janin.com>

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
