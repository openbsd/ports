# gfortran
ONLY_FOR_ARCHS =	${GCC49_ARCHS}

COMMENT =		Hierarchical Data Format 5 Technology suite

V =			1.14.3
DISTNAME =		hdf5-${V}
GH_ACCOUNT =		HDFGroup
GH_PROJECT =		hdf5
GH_TAGNAME =		${DISTNAME:S/./_/g}

SHARED_LIBS +=  hdf5			6.0	# 313.0
SHARED_LIBS +=  hdf5_cpp		10.0	# 310.3
SHARED_LIBS +=  hdf5_hl			5.0	# 310.3
SHARED_LIBS +=  hdf5_hl_cpp		6.0	# 310.3
SHARED_LIBS +=  hdf5_fortran		3.0	# 312.0
SHARED_LIBS +=  hdf5hl_fortran		2.0	# 310.3

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Martin Reindl <martin@catai.org>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

# for h5fuse.sh
RUN_DEPENDS +=		shells/bash

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
