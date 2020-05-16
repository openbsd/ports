# $OpenBSD: Makefile,v 1.2 2020/05/16 11:24:38 martin Exp $

COMMENT =	spherical mercator coordinate and tile utilities

MODPY_EGG_VERSION =	1.1.4
DISTNAME =	mercantile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	geo
MAINTAINER =	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =	devel/py-click${MODPY_FLAVOR}

# does not package tests, only available via git
NO_TEST =	Yes
TEST_DEPENDS =	devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
