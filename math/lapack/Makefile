COMMENT=	library of Fortran linear algebra subroutines

DPB_PROPERTIES=	parallel

GH_ACCOUNT=	Reference-LAPACK
GH_PROJECT=	lapack
GH_TAGNAME=	v3.12.1

SHARED_LIBS +=  blas                      2.2
SHARED_LIBS +=  cblas                     2.1
SHARED_LIBS +=  lapack                    7.2
SHARED_LIBS +=  lapacke                   0.1
SHARED_LIBS +=  tmglib                    0.1

CATEGORIES=	math

HOMEPAGE=	https://netlib.org/lapack/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODFORTRAN_WANTLIB} m

MODULES=	devel/cmake \
		fortran

CONFIGURE_ARGS=	-DBUILD_TESTING=ON \
		-DCMAKE_Fortran_COMPILER=${MODFORTRAN_COMPILER} \
		-DBUILD_SHARED_LIBS=ON \
		-DLAPACKE_WITH_TMG=ON \
		-DCBLAS=ON \
		-DBUILD_DEPRECATED=ON \
		-DBUILD_MAN_DOCUMENTATION=OFF

BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS-main= ${MODFORTRAN_LIB_DEPENDS}

.include <bsd.port.mk>
