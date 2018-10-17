# $OpenBSD: Makefile,v 1.1.1.1 2018/10/17 16:10:42 fcambus Exp $

COMMENT =	simple VTXXX-compatible terminal emulator

MODPY_EGG_VERSION = 0.8.0
DISTNAME =	pyte-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/selectel/pyte

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

BUILD_DEPENDS =	devel/py-test-runner${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

NO_TEST =	Yes

.include <bsd.port.mk>
