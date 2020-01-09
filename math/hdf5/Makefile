# $OpenBSD: Makefile,v 1.20 2020/01/09 12:00:58 feinerer Exp $

COMMENT =		Hierarchical Data Format 5 Technology suite

V =			1.10.6
DISTNAME =		hdf5-${V}

SHARED_LIBS +=	hdf5		2.1 # 105.0
SHARED_LIBS +=	hdf5_cpp	6.1 # 105.0
SHARED_LIBS +=	hdf5_hl		2.0 # 101.3
SHARED_LIBS +=	hdf5_hl_cpp	3.0 # 101.4

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://support.hdfgroup.org/ftp/HDF5/current/src/ \
			https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.10/hdf5-${V}/src/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-cxx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hdf5
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/hdf5
	mv ${PREFIX}/share/hdf5_examples ${PREFIX}/share/examples/hdf5

.include <bsd.port.mk>
