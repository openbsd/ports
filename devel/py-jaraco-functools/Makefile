# $OpenBSD: Makefile,v 1.6 2021/11/02 00:00:50 sthen Exp $

COMMENT =		functools like those found in stdlib

MODPY_EGG_VERSION =	2.0
REVISION =		4
DISTNAME =		jaraco.functools-${MODPY_EGG_VERSION}
PKGNAME =		py-jaraco-functools-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jaraco/jaraco.functools

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-more-itertools${MODPY_FLAVOR}

# XXX requires unported TEST_DEPENDS, i.e. jaraco.classes
NO_TEST =		Yes

.include <bsd.port.mk>
