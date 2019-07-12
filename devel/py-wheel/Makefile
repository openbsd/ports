# $OpenBSD: Makefile,v 1.8 2019/07/12 20:45:56 sthen Exp $

COMMENT =		built-package format for Python

MODPY_EGG_VERSION =	0.31.0
DISTNAME =		wheel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	wheel

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/wheel{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
