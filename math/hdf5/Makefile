# gfortran
ONLY_FOR_ARCHS =	${GCC49_ARCHS}

COMMENT =		Hierarchical Data Format 5 Technology suite

V =			1.12.1
DISTNAME =		hdf5-${V}

SHARED_LIBS +=	hdf5		4.0 # 201.0
SHARED_LIBS +=	hdf5_cpp	8.0 # 201.0
SHARED_LIBS +=	hdf5_hl		3.1 # 200.1
SHARED_LIBS +=	hdf5_hl_cpp	4.1 # 200.1
SHARED_LIBS +=	hdf5_fortran	1.0 # 201.0
SHARED_LIBS +=	hdf5hl_fortran	0.1 # 200.1

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Martin Reindl <martin@catai.org>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.12/hdf5-${V}/src/ \
			https://support.hdfgroup.org/ftp/HDF5/current/src/

MODULES	=		fortran
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-cxx \
			--enable-fortran \
			FC=egfortran \
			--with-examplesdir=${PREFIX}/share/examples/hdf5

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hdf5
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/hdf5

.include <bsd.port.mk>
