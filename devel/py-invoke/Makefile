# $OpenBSD: Makefile,v 1.1.1.1 2021/09/02 08:45:37 sthen Exp $

COMMENT =	Pythonic task execution

MODPY_EGG_VERSION =	1.6.0

DISTNAME =	invoke-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://www.pyinvoke.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# some failures, possibly related to running under ports test framework
# with captured stdio etc.
MODPY_PYTEST =		Yes
TEST_DEPENDS =		devel/py-test-relaxed${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
