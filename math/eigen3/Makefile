# $OpenBSD: Makefile,v 1.10 2019/07/17 14:46:33 danj Exp $

PKG_ARCH =	*
COMMENT =	lightweight C++ template library for linear algebra
CATEGORIES =	math devel
HOMEPAGE =	http://eigen.tuxfamily.org/
DIST_SUBDIR =	eigen
VERSION =	3.2.2
DISTNAME =	${VERSION}
PKGNAME =	eigen3-${VERSION}
WRKDIST =	${WRKDIR}/eigen-eigen-1306d75b4a21
REVISION =	4

# Mostly MPLv2, also LGPLv2.1, LGPLv2.1+ and BSDL
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://bitbucket.org/eigen/eigen/get/ \
		https://spacehopper.org/mirrors/eigen/

# Many dependencies are only needed for tests
PSEUDO_FLAVORS =	test
FLAVOR ?=

# avoid for arch-independent package
WANTLIB- =

BUILD_DEPENDS =		devel/sparsehash \
			math/suitesparse

RUN_DEPENDS =		devel/sparsehash \
			math/suitesparse

MODULES =		devel/cmake x11/qt4

# Needs Fortran support
USE_NINJA =		No

# Unported stuff, mostly needed for tests
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Adolc=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Cholmod=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Metis=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Pastix=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_SPQR=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Scotch=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_SuperLU=Yes

.if ${FLAVOR:Mtest}
CONFIGURE_ARGS +=	-DEIGEN_FAILTEST=Yes
BUILD_DEPENDS +=	devel/gmp \
			devel/mpfr \
			graphics/freeglut \
			graphics/glew \
			math/fftw
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -ggdb"

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
