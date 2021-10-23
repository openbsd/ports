# $OpenBSD: Makefile,v 1.15 2021/10/21 08:59:33 sthen Exp $

COMMENT =		implementation of JSON Schema validation for Python

MODPY_EGG_VERSION =	4.1.2
DISTNAME =		jsonschema-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://github.com/Julian/jsonschema

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	jsonschema

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-vcversioner${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			devel/py-setuptools_scm${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-pyrsistent${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR}

.include <bsd.port.mk>
