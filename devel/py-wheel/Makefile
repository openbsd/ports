# $OpenBSD: Makefile,v 1.15 2022/02/26 17:35:15 sthen Exp $

COMMENT =		built-package format for Python

MODPY_EGG_VERSION =	0.36.2
DISTNAME =		wheel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

# With tar from base, some files are extracted with a timestamp of
# Jan 1 1970, resulting in tests failing.
BUILD_DEPENDS =		archivers/gtar
TAR =			${LOCALBASE}/bin/gtar

.if ${FLAVOR:Mpython3}
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}
.endif

post-install:
	mv ${PREFIX}/bin/wheel{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
