COMMENT=	library of Fortran linear algebra subroutines

DPB_PROPERTIES=	parallel

GH_ACCOUNT=	Reference-LAPACK
GH_PROJECT=	lapack
V=		3.12.0
GH_TAGNAME=	v$V
REVISION=	0

SHARED_LIBS +=  blas                      2.1 # 0.0
SHARED_LIBS +=  cblas                     2.0 # 0.0
SHARED_LIBS +=  lapack                    7.1 # 0.0
SHARED_LIBS +=  lapacke                   0.0 # 0.0
SHARED_LIBS +=  tmglib                    0.0 # 0.0

WANTLIB += ${MODFORTRAN_WANTLIB} m

CATEGORIES=	math

HOMEPAGE=	https://netlib.org/lapack/

# BSD
PERMIT_PACKAGE=	Yes

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
#TEST_DEPENDS=		lang/python/3

SUBST_VARS=	V

.include <bsd.port.mk>
