# $OpenBSD: Makefile,v 1.40 2022/02/26 20:49:34 sthen Exp $

COMMENT =		cross-project testing tool for Python

MODPY_EGG_VERSION =	6.2.5
DISTNAME =		pytest-${MODPY_EGG_VERSION}
PKGNAME =		py-test-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://docs.pytest.org/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	testing

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR}>=17.4.0 \
			devel/py-more-itertools${MODPY_FLAVOR} \
			devel/py-pluggy${MODPY_FLAVOR}>=0.9 \
			devel/py-py${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR}

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			shells/bash \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
