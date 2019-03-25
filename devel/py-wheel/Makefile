# $OpenBSD: Makefile,v 1.6 2019/03/25 14:29:51 kn Exp $

COMMENT =		built-package format for Python

MODPY_EGG_VERSION =	0.31.0
DISTNAME =		wheel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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
