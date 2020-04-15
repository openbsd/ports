# $OpenBSD: Makefile,v 1.4 2020/04/15 14:08:17 fcambus Exp $

COMMENT =	simple VTXXX-compatible terminal emulator

MODPY_EGG_VERSION = 0.8.0
DISTNAME =	pyte-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

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
