# gfortran
ONLY_FOR_ARCHS =	${GCC49_ARCHS}

COMMENT =		Hierarchical Data Format 5 Technology suite

V =			1.14.6
REVISION =		0
DISTNAME =		hdf5-${V}
GH_ACCOUNT =		HDFGroup
GH_PROJECT =		hdf5
GH_TAGNAME =		${DISTNAME:S/-/_/g}

SHARED_LIBS +=  hdf5			8.0	# 315.1
SHARED_LIBS +=  hdf5_cpp		12.0	# 310.6
SHARED_LIBS +=  hdf5_hl			7.0	# 310.6
SHARED_LIBS +=  hdf5_hl_cpp		8.0	# 310.6
SHARED_LIBS +=  hdf5_fortran		5.0	# 313.2
SHARED_LIBS +=  hdf5hl_fortran		4.0	# 310.6

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Martin Reindl <martin@catai.org>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z aec sz

COMPILER =		base-clang ports-gcc base-gcc
COMPILER_LANGS =	fortran

# for h5fuse.sh
RUN_DEPENDS +=		shells/bash

LIB_DEPENDS +=		archivers/libaec

MODULES	=		fortran
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-cxx \
			--enable-fortran \
			--with-szlib=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hdf5
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/hdf5

.include <bsd.port.mk>
