# $OpenBSD: Makefile,v 1.14 2022/02/05 21:38:12 daniel Exp $

COMMENT =		plugin and hook calling mechanisms for Python

MODPY_EGG_VERSION =	0.13.1
DISTNAME =		pluggy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR}

.include <bsd.port.mk>
