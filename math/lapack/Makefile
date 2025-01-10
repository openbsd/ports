COMMENT=		library of Fortran linear algebra subroutines

PKGNAME=		lapack-${V}

DPB_PROPERTIES =	parallel

V=		3.12.0
DIST_TUPLE =	github Reference-LAPACK lapack v${V} .
REVISION=	0

SHARED_LIBS +=  blas                      2.1 # 0.0
SHARED_LIBS +=  cblas                     2.0 # 0.0
SHARED_LIBS +=  lapack                    7.1 # 0.0
SHARED_LIBS +=  lapacke                   0.0 # 0.0
SHARED_LIBS +=  tmglib                    0.0 # 0.0

WANTLIB += ${MODFORTRAN_WANTLIB} m

CATEGORIES =	math

HOMEPAGE =	https://netlib.org/lapack/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake \
		fortran

#TEST_DEPENDS =		lang/python
CONFIGURE_ARGS =	-DBUILD_TESTING=ON

BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}

LIB_DEPENDS-main =	${MODFORTRAN_LIB_DEPENDS}

CONFIGURE_ARGS +=	-DCMAKE_Fortran_COMPILER=${MODFORTRAN_COMPILER}

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DLAPACKE_WITH_TMG=ON \
			-DCBLAS=ON \
			-DBUILD_DEPRECATED=ON

CONFIGURE_ARGS +=	-DBUILD_MAN_DOCUMENTATION=OFF

SUBST_VARS +=		V

.include <bsd.port.mk>
