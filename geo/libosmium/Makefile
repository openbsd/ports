COMMENT =	fast, flexible library for working with OpenStreetMap data

GH_ACCOUNT =	osmcode
GH_PROJECT =	libosmium
GH_TAGNAME =	v2.16.0

CATEGORIES =	geo

HOMEPAGE =	https://osmcode.org/libosmium/

# Boost
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake
BUILD_DEPENDS =	devel/boost \
		devel/cppcheck \
		devel/protozero \
		devel/sparsehash \
		geo/gdal \
		geo/geos

# include/osmium/io/detail/opl_parser_functions.hpp
# #include <utf8.h>
RUN_DEPENDS =	devel/utfcpp

.include <bsd.port.mk>
