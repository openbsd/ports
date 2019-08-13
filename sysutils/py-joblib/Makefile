# $OpenBSD: Makefile,v 1.1.1.1 2019/08/13 08:24:07 pirofti Exp $

COMMENT =	lightweight pipelining: using Python functions as pipeline

MODPY_EGG_VERSION =	0.13.2
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

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
