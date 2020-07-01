# $OpenBSD: Makefile,v 1.2 2020/07/01 10:07:04 sthen Exp $

COMMENT =	lightweight pipelining: using Python functions as pipeline

MODPY_EGG_VERSION =	0.15.1
DISTNAME =		joblib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://joblib.readthedocs.io

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVOR =		python3
FLAVORS =		python3

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
