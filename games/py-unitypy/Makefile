BROKEN-sparc64 = error: read_typetree_value was not declared in this scope

COMMENT =	python module to manage Unity assets

MODPY_DISTV =	1.24.2
DISTNAME =	unitypy-${MODPY_DISTV}
PKGNAME =	py-unitypy-${MODPY_DISTV}

CATEGORIES =	games

HOMEPAGE=	https://github.com/K0lb3/UnityPy

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

TEST_DEPENDS =	sysutils/py-psutil \
		sysutils/py-fsspec

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
