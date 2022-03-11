PKG_ARCH =	*

COMMENT =	lightweight C++ template library for linear algebra

CATEGORIES =	math devel

HOMEPAGE =	https://eigen.tuxfamily.org

VERSION =	3.3.9
DISTNAME =	eigen-${VERSION}
PKGNAME =	eigen3-${VERSION}

# Mostly MPLv2, also LGPLv2.1, LGPLv2.1+ and BSDL
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://gitlab.com/libeigen/eigen/-/archive/${VERSION}/

# Many dependencies are only needed for tests
PSEUDO_FLAVORS =	test
FLAVOR ?=

# avoid for arch-independent package
WANTLIB- =

BUILD_DEPENDS =		devel/sparsehash \
			math/blas \
			math/suitesparse

RUN_DEPENDS =		devel/sparsehash \
			math/suitesparse

MODULES =		devel/cmake

# Unported stuff, mostly needed for tests
CONFIGURE_ARGS =	-DBLAS_DIR:PATH="${LOCALBASE}" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Adolc=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Cholmod=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_SPQR=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_SuperLU=Yes \
			-DEIGEN_TEST_CXX11=ON \
			-DEIGEN_TEST_NOQT=ON

.if ${FLAVOR:Mtest}
CONFIGURE_ARGS +=	-DEIGEN_FAILTEST=Yes
BUILD_DEPENDS +=	devel/boost \
			devel/gmp \
			devel/mpfr \
			graphics/freeglut \
			graphics/glew \
			math/fftw
TEST_DEPENDS =		shells/bash
.else
NO_TEST =		Yes
CONFIGURE_ARGS +=	-DEIGEN_FAILTEST=No \
			-DCMAKE_DISABLE_FIND_PACKAGE_FFTW=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_GLEW=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_GLUT=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_GMP=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_MPFR=Yes
.endif

SEPARATE_BUILD =	flavored
TEST_TARGET =		check

.include <bsd.port.mk>
