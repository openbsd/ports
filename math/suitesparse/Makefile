# $OpenBSD: Makefile,v 1.11 2020/04/06 08:48:06 pirofti Exp $

BROKEN-hppa=	undefined refs to dtrsv/dgemv/dtrsm/dgemm/dger in libumfpack.a

COMMENT=		suite of sparse matrix algorithms

DISTNAME=		SuiteSparse-4.4.6
PKGNAME=		${DISTNAME:L}
REVISION=		3

CATEGORIES=		math

HOMEPAGE=		http://faculty.cse.tamu.edu/davis/suitesparse.html

MAINTAINER=		Paul Irofti <paul@irofti.net>

SO_VERSION=		2.1
.for _lib in \
amd btf camd ccolamd cholmod colamd csparse cxsparse klu ldl rbio spqr \
suitesparseconfig umfpack
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODFORTRAN_WANTLIB} blas lapack m

MASTER_SITES=		http://faculty.cse.tamu.edu/davis/SuiteSparse/

MODULES=		fortran
MODFORTRAN_COMPILER=	gfortran

BUILD_DEPENDS=		${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=		${MODFORTRAN_LIB_DEPENDS} \
			math/lapack

ALL_TARGET=		default
NO_TEST=		Yes
SUBST_VARS=		WRKINST
USE_GMAKE=		Yes
WRKDIST=		${WRKDIR}/SuiteSparse

MAKE_FLAGS=		CFLAGS="${CFLAGS} -fPIC" \
			CXX="${CXX}"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/SuiteSparse_config/SuiteSparse_config.mk

post-build:
	# build shared libraries
	cd ${WRKSRC}/SuiteSparse_config && \
		${AR} x libsuitesparseconfig.a
	cd ${WRKSRC} && \
		${CC} -shared -o \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			SuiteSparse_config/*.o -lm

	cd ${WRKSRC} && \
		${CC} -shared -o libamd.so.${LIBamd_VERSION} \
			AMD/Lib/*.o \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			-lm

	cd ${WRKSRC} && \
		${CC} -shared -o libbtf.so.${LIBbtf_VERSION} \
			BTF/Lib/*.o

	cd ${WRKSRC} && \
		${CC} -shared -o libcamd.so.${LIBcamd_VERSION} \
			CAMD/Lib/*.o \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			-lm

	cd ${WRKSRC} && \
		${CC} -shared -o libcolamd.so.${LIBcolamd_VERSION} \
			COLAMD/Lib/*.o \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			-lm

	cd ${WRKSRC} && \
		${CC} -shared -o libccolamd.so.${LIBccolamd_VERSION} \
			CCOLAMD/Lib/*.o \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			-lm

	cd ${WRKSRC} && \
		${CC} -shared -o libcholmod.so.${LIBcholmod_VERSION} \
			CHOLMOD/Lib/*.o libamd.so.${LIBamd_VERSION} \
			libcamd.so.${LIBcamd_VERSION} \
			libcolamd.so.${LIBcolamd_VERSION} \
			libccolamd.so.${LIBccolamd_VERSION} \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			-lm -L${LOCALBASE}/lib -lblas -lgfortran -llapack

	cd ${WRKSRC} && \
		${CC} -shared -o libcsparse.so.${LIBcsparse_VERSION} \
			CSparse/Lib/*.o -lm

	cd ${WRKSRC} && \
		${CC} -shared -o libcxsparse.so.${LIBcxsparse_VERSION} \
			CXSparse/Lib/*.o -lm

	cd ${WRKSRC} && \
		${CC} -shared -o libklu.so.${LIBklu_VERSION} \
			KLU/Lib/*.o libamd.so.${LIBamd_VERSION} \
			libbtf.so.${LIBbtf_VERSION} \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			-lm

	cd ${WRKSRC} && \
		${CC} -shared -o libldl.so.${LIBldl_VERSION} \
			LDL/Lib/*.o -lm

	cd ${WRKSRC} && \
		${CC} -shared -o libumfpack.so.${LIBumfpack_VERSION} \
			UMFPACK/Lib/*.o libamd.so.${LIBamd_VERSION} \
			libcholmod.so.${LIBcholmod_VERSION} \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			-lm -L${LOCALBASE}/lib -lblas -lgfortran -llapack

	cd ${WRKSRC} && \
		${CC} -shared -o libspqr.so.${LIBspqr_VERSION} \
			SPQR/Lib/*.o libcholmod.so.${LIBcholmod_VERSION} \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			-lm -L${LOCALBASE}/lib -lblas -lgfortran -llapack

	cd ${WRKSRC} && \
		${CC} -shared -o librbio.so.${LIBrbio_VERSION} \
			RBio/Lib/*.o \
			libsuitesparseconfig.so.${LIBsuitesparseconfig_VERSION} \
			-lm

post-install:
	# remove versionned static archives, links and libcerbla
	# (not meant to be shipped)
	rm ${PREFIX}/lib/*.a
	for i in `find ${WRKBUILD} -type f -name '*.a'`; do \
		${INSTALL_DATA} $${i} ${PREFIX}/lib/; \
	done
	rm ${PREFIX}/lib/libcerbla.a
	
	${INSTALL_DATA} ${WRKBUILD}/lib*.so.?.? ${PREFIX}/lib/

.include <bsd.port.mk>
