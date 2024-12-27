COMMENT =		fast library for approximate nearest neighbors

DIST_TUPLE +=		github flann-lib flann 1.9.2 .

SHARED_LIBS +=  	flann		0.0 # 0.0
SHARED_LIBS +=  	flann_cpp	0.0 # 0.0

CATEGORIES =		math
HOMEPAGE =		https://www.cs.ubc.ca/research/flann/
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} lz4 m

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		math/hdf5
LIB_DEPENDS =		archivers/lz4

# The documentation is a PDF (requires LaTeX)
CONFIGURE_ARGS =	-DBUILD_C_BINDINGS=ON \
			-DBUILD_PYTHON_BINDINGS=OFF \
			-DBUILD_MATLAB_BINDINGS=OFF \
			-DBUILD_CUDA_LIB=OFF \
			-DBUILD_EXAMPLES=OFF \
			-DBUILD_TESTS=OFF \
			-DBUILD_DOC=OFF \
			-DUSE_OPENMP=OFF \
			-DUSE_MPI=OFF

.include <bsd.port.mk>
