# $OpenBSD: Makefile,v 1.11 2020/07/03 21:12:48 sthen Exp $

COMMENT =		plugin and hook calling mechanisms for Python

MODPY_EGG_VERSION =	0.11.0
DISTNAME =		pluggy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
