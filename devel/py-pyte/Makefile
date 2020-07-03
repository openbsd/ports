# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:48 sthen Exp $

COMMENT =	simple VTXXX-compatible terminal emulator

MODPY_EGG_VERSION = 0.8.0
DISTNAME =	pyte-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://github.com/selectel/pyte

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

BUILD_DEPENDS =	devel/py-test-runner${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

NO_TEST =	Yes

.include <bsd.port.mk>
