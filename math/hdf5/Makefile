# $OpenBSD: Makefile,v 1.1.1.1 2015/06/29 19:43:53 feinerer Exp $

COMMENT =		Hierarchical Data Format 5 Technology suite

V =			1.8.15-patch1
DISTNAME =		hdf5-${V}
PKGNAME =		hdf5-${V:S/-patch/pl/}

SHARED_LIBS +=	hdf5		0.0 # 10.1
SHARED_LIBS +=	hdf5_cpp	0.0 # 10.1
SHARED_LIBS +=	hdf5_hl		0.0 # 10.1
SHARED_LIBS +=	hdf5_hl_cpp	0.0 # 10.1

CATEGORIES =		math

HOMEPAGE =		https://www.hdfgroup.org/HDF5/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# https://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/COPYING
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++ z

MASTER_SITES =		http://www.hdfgroup.org/ftp/HDF5/current/src/

SEPARATE_BUILD =	Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--enable-cxx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hdf5
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/hdf5
	mv ${PREFIX}/share/hdf5_examples ${PREFIX}/share/examples/hdf5

.include <bsd.port.mk>
