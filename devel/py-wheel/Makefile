# $OpenBSD: Makefile,v 1.2 2017/03/05 11:01:46 ajacoutot Exp $

COMMENT =		built-package format for Python

MODPY_EGG_VERSION =	0.30.0a0
DISTNAME =		wheel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/wheel{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest wheel

.include <bsd.port.mk>
