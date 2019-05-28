# $OpenBSD: Makefile,v 1.12 2019/05/28 19:35:14 landry Exp $

COMMENT =	translator library for point cloud formats

DISTNAME =	PDAL-1.9.1-src
PKGNAME =	${DISTNAME:L:C/-src//}

SHARED_LIBS =	pdal_base 2.0 # 6.1
SHARED_LIBS +=  pdal_util 0.2 # 6.1

CATEGORIES =	geo devel textproc

HOMEPAGE =	https://pdal.io/
MASTER_SITES =	https://github.com/PDAL/PDAL/releases/download/1.9.1/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake lang/python

# uses std=c++0x
COMPILER =	base-clang ports-gcc

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
BUILD_DEPENDS =	math/py-numpy,${MODPY_FLAVOR}
LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		geo/gdal \
		devel/jsoncpp \
		devel/libexecinfo \
		databases/postgresql \
		net/curl

WANTLIB +=	c curl gdal geotiff jsoncpp m pq pthread ${MODPY_WANTLIB}
WANTLIB +=	execinfo xml2 z
WANTLIB += ${COMPILER_LIBCXX}

CONFIGURE_ARGS =	\
	-DJSONCPP_INCLUDE_DIR=${LOCALBASE}/include/jsoncpp/ \
	-DPDAL_PLUGIN_INSTALL_PATH=${LOCALBASE}/share/pdal/plugins \
	-DBUILD_PLUGIN_PYTHON=ON

#post-extract:
#	rm ${WRKSRC}/cmake/execinfo.cmake

# needs load extension
# -DBUILD_PLUGIN_SQLITE=ON

.include <bsd.port.mk>
