COMMENT =	mesh data abstration library

GH_ACCOUNT=	lutraconsulting
GH_PROJECT =	MDAL
GH_TAGNAME =	release-1.2.0

PKGNAME =	${GH_PROJECT:L}-${GH_TAGNAME:S/release-//}

SHARED_LIBS =	mdal 9.0

CATEGORIES =	geo devel textproc

HOMEPAGE =	https://www.mdal.xyz/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

# uses std=gnu++11
COMPILER =	base-clang ports-gcc

# needs a version of netcdf with nc_inq_varids
LIB_DEPENDS =	math/netcdf>=4 \
		geo/gdal

BUILD_DEPENDS =	devel/gtest

CXXFLAGS +=	-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

WANTLIB += ${COMPILER_LIBCXX} c gdal hdf5 m netcdf sqlite3 xml2 z

post-extract:
	rm ${WRKSRC}/cmake/FindSQLite3.cmake

.include <bsd.port.mk>
