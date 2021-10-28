# $OpenBSD: Makefile,v 1.23 2021/10/28 14:46:11 jca Exp $

# gfortran
ONLY_FOR_ARCHS =	${GCC49_ARCHS}

COMMENT =		Hierarchical Data Format 5 Technology suite

V =			1.12.0
DISTNAME =		hdf5-${V}

SHARED_LIBS +=	hdf5		3.0 # 200.0
SHARED_LIBS +=	hdf5_cpp	7.0 # 200.0
SHARED_LIBS +=	hdf5_hl		3.0 # 200.0
SHARED_LIBS +=	hdf5_hl_cpp	4.0 # 200.0
SHARED_LIBS +=	hdf5_fortran	0.0 # 200.0
SHARED_LIBS +=	hdf5hl_fortran	0.0 # 200.0

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Martin Reindl <martin@catai.org>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://support.hdfgroup.org/ftp/HDF5/current/src/ \
			https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.12/hdf5-${V}/src/

MODULES	=		fortran
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-cxx \
			--enable-fortran \
			--with-examplesdir=${PREFIX}/share/examples/hdf5

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hdf5
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/hdf5

.include <bsd.port.mk>
