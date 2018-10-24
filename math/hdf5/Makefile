# $OpenBSD: Makefile,v 1.16 2018/10/24 14:28:07 sthen Exp $

COMMENT =		Hierarchical Data Format 5 Technology suite

V =			1.8.20
DISTNAME =		hdf5-${V}
REVISION =		0

SHARED_LIBS +=	hdf5		1.1 # 13.1
SHARED_LIBS +=	hdf5_cpp	4.1 # 15.0
SHARED_LIBS +=	hdf5_hl		1.1 # 12.1
SHARED_LIBS +=	hdf5_hl_cpp	2.0 # 12.1

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://support.hdfgroup.org/ftp/HDF5/current18/src/ \
			https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.8/hdf5-${V}/src/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-cxx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hdf5
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/hdf5
	mv ${PREFIX}/share/hdf5_examples ${PREFIX}/share/examples/hdf5

.include <bsd.port.mk>
