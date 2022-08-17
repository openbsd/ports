COMMENT-main =	F77 subroutines for solving large scale eigenvalue problems
COMMENT-mpi =	openmpi for arpack

GH_TAGNAME =	3.8.0
DISTNAME =	arpack-ng-${GH_TAGNAME}
PKGNAME =	arpack-${GH_TAGNAME}
GH_ACCOUNT =	opencollab
GH_PROJECT =	arpack-ng
EPOCH =		0
REVISION =	1

MULTI_PACKAGES =	-main -mpi
FLAVORS =		no_mpi
FLAVOR ?=

SHARED_LIBS +=	arpack 2.0
SHARED_LIBS +=	parpack 1.0

CATEGORIES =	math

HOMEPAGE =	https://github.com/opencollab/arpack-ng

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

MODULES =	fortran \
		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS:BOOL=ON \
			-D ICB=ON

LIB_DEPENDS-main = 	math/lapack \
			math/blas

WANTLIB +=	lapack blas m

LIB_DEPENDS-mpi =	devel/openmpi \
			math/arpack,-main

WANTLIB-mpi +=	${WANTLIB} arpack execinfo pciaccess pthread util z
WANTLIB-mpi +=	mpi mpi_mpifh mpi_usempi_ignore_tkr
WANTLIB-mpi +=	mpi_usempif08 open-pal open-rte

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-mpi}
CONFIGURE_ARGS +=	-D MPI=ON
.endif

post-install:
.for i in BAND COMPLEX NONSYM SIMPLE SVD SYM
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arpack/$i
	${INSTALL_DATA} ${WRKDIST}/EXAMPLES/$i/* \
		${PREFIX}/share/examples/arpack/$i
.endfor
	${INSTALL_DATA} ${WRKDIST}/EXAMPLES/README \
		${PREFIX}/share/examples/arpack
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arpack
	${INSTALL_DATA} ${WRKDIST}/DOCUMENTS/* ${PREFIX}/share/doc/arpack
	${INSTALL_DATA} ${WRKDIST}/COPYING ${PREFIX}/share/doc/arpack

.include <bsd.port.mk>
