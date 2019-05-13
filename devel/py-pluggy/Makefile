# $OpenBSD: Makefile,v 1.8 2019/05/13 18:06:43 danj Exp $

COMMENT =		plugin and hook calling mechanisms for Python

MODPY_EGG_VERSION =	0.9.0
DISTNAME =		pluggy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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
