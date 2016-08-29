# $OpenBSD: Makefile,v 1.6 2016/08/29 11:48:06 shadchin Exp $

COMMENT =		McCabe complexity checker for Python

MODPY_EGG_VERSION =	0.5.2
DISTNAME =		mccabe-${MODPY_EGG_VERSION}
PKGNAME =		py-mccabe-${MODPY_EGG_VERSION}
REVISION =		0

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
