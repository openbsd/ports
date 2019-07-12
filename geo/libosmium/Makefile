# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:29 sthen Exp $

COMMENT =	fast, flexible library for working with OpenStreetMap data

GH_ACCOUNT =	osmcode
GH_PROJECT =	libosmium
GH_TAGNAME =	v2.14.0
REVISION =	0

CATEGORIES =	geo

HOMEPAGE =	https://osmcode.org/libosmium/

# Boost
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake
BUILD_DEPENDS =	devel/boost \
		devel/cppcheck \
		devel/proj \
		devel/protozero \
		devel/sparsehash \
		geo/gdal \
		geo/geos

# https://github.com/osmcode/libosmium/issues/277
CXXFLAGS+=-DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1

# include/osmium/io/detail/opl_parser_functions.hpp
# #include <utf8.h>
RUN_DEPENDS =	devel/utfcpp

.include <bsd.port.mk>
