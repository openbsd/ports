COMMENT =	fast, flexible library for working with OpenStreetMap data

GH_ACCOUNT =	osmcode
GH_PROJECT =	libosmium
GH_TAGNAME =	v2.20.0
REVISION =	1

CATEGORIES =	geo

HOMEPAGE =	https://osmcode.org/libosmium/

# Boost
PERMIT_PACKAGE =	Yes

# header only lib
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake
BUILD_DEPENDS =	devel/boost \
		devel/cppcheck \
		devel/protozero \
		devel/sparsehash \
		geo/gdal \
		geo/geos

.include <bsd.port.mk>
