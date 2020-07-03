# $OpenBSD: Makefile,v 1.3 2020/07/03 21:13:11 sthen Exp $

COMMENT =	lightweight pipelining: using Python functions as pipeline

MODPY_EGG_VERSION =	0.15.1
DISTNAME =		joblib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
