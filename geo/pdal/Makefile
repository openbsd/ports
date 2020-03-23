# $OpenBSD: Makefile,v 1.15 2020/03/23 13:23:32 landry Exp $

COMMENT =	translator library for point cloud formats

DISTNAME =	PDAL-2.1.0-src
PKGNAME =	${DISTNAME:L:C/-src//}

SHARED_LIBS =	pdal_base 3.0 # 6.1
SHARED_LIBS +=  pdal_util 0.2 # 6.1

CATEGORIES =	geo devel textproc

HOMEPAGE =	https://pdal.io/
MASTER_SITES =	https://github.com/PDAL/PDAL/releases/download/2.1.0/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

# uses std=c++0x
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		archivers/laszip \
		geo/gdal \
		databases/postgresql \
		net/curl

WANTLIB +=	c crypto curl gdal geotiff laszip m pq pthread
WANTLIB +=	ssl xml2 z zstd
WANTLIB += ${COMPILER_LIBCXX}

CONFIGURE_ARGS =	\
	-DLASZIP_INCLUDE_DIR=${LOCALBASE}/include \
	-DPDAL_PLUGIN_INSTALL_PATH=${LOCALBASE}/share/pdal/plugins

.include <bsd.port.mk>
