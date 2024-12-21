COMMENT =	python module to manage Unity assets

MODPY_DISTV =	1.20.12
DISTNAME =	unitypy-${MODPY_DISTV}
PKGNAME =	py-unitypy-${MODPY_DISTV}
REVISION =	0

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

.include <bsd.port.mk>
