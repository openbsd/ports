ONLY_FOR_ARCHS =	${GCC49_ARCHS}

COMMENT =		Hierarchical Data Format 5 Technology suite

GH_ACCOUNT =		HDFGroup
GH_PROJECT =		hdf5
GH_TAGNAME =		2.2.0

SHARED_LIBS +=  hdf5			8.0	# 315.1
SHARED_LIBS +=  hdf5_cpp		13.0	# 310.6
SHARED_LIBS +=  hdf5_hl			7.0	# 310.6
SHARED_LIBS +=  hdf5_hl_cpp		9.0	# 310.6
SHARED_LIBS +=  hdf5_f90cstub		0.0	# 0.0
SHARED_LIBS +=  hdf5_hl_f90cstub	0.0	# 0.0
SHARED_LIBS +=  hdf5_fortran		6.0	# 313.2
SHARED_LIBS +=  hdf5_hl_fortran		7.0	# 310.6
SHARED_LIBS +=  hdf5_tools		0.0	# 0.0

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Martin Reindl <martin@catai.org>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z aec sz

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++ fortran

LIB_DEPENDS +=		archivers/libaec

MODULES	+=		devel/cmake fortran
SEPARATE_BUILD =	Yes
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DHDF5_BUILD_CPP_LIB=ON \
			-DHDF5_BUILD_FORTRAN=ON \
			-DHDF5_ENABLE_ZLIB_SUPPORT=ON

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hdf5
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/hdf5

.include <bsd.port.mk>
