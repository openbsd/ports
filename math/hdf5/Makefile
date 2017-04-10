# $OpenBSD: Makefile,v 1.10 2017/04/10 11:46:22 sthen Exp $

COMMENT =		Hierarchical Data Format 5 Technology suite

V =			1.8.18
DISTNAME =		hdf5-${V}

SHARED_LIBS +=	hdf5		1.0 # 12.1
SHARED_LIBS +=	hdf5_cpp	3.0 # 13.0
SHARED_LIBS +=	hdf5_hl		1.0 # 11.1
SHARED_LIBS +=	hdf5_hl_cpp	2.0 # 12.0

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${LIBCXX} z

MASTER_SITES =		https://support.hdfgroup.org/ftp/HDF5/current18/src/ \
			https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-${V}/src/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-cxx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hdf5
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/hdf5
	mv ${PREFIX}/share/hdf5_examples ${PREFIX}/share/examples/hdf5

.include <bsd.port.mk>
