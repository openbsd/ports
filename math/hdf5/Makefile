# $OpenBSD: Makefile,v 1.7 2016/03/11 20:28:27 naddy Exp $

COMMENT =		Hierarchical Data Format 5 Technology suite

V =			1.8.16
DISTNAME =		hdf5-${V}

SHARED_LIBS +=	hdf5		0.1 # 11.0
SHARED_LIBS +=	hdf5_cpp	1.0 # 11.0
SHARED_LIBS +=	hdf5_hl		0.0 # 10.2
SHARED_LIBS +=	hdf5_hl_cpp	1.0 # 11.0

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++ z

MASTER_SITES =		https://www.hdfgroup.org/ftp/HDF5/current/src/ \
			https://www.hdfgroup.org/ftp/HDF5/releases/hdf5-${V}/src/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-cxx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hdf5
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/hdf5
	mv ${PREFIX}/share/hdf5_examples ${PREFIX}/share/examples/hdf5

.include <bsd.port.mk>
