COMMENT =	python module to manage Unity assets

MODPY_EGG_VERSION = 1.20.12
DISTNAME =	unitypy-${MODPY_EGG_VERSION}
PKGNAME =	py-unitypy-${MODPY_EGG_VERSION}

CATEGORIES =	games

HOMEPAGE=	https://github.com/K0lb3/UnityPy

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
