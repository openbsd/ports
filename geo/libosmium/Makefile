# $OpenBSD: Makefile,v 1.2 2018/10/29 08:11:25 ajacoutot Exp $

COMMENT =	fast, flexible library for working with OpenStreetMap data

GH_ACCOUNT =	osmcode
GH_PROJECT =	libosmium
GH_TAGNAME =	v2.14.0
REVISION =	0

CATEGORIES =	geo

HOMEPAGE =	https://osmcode.org/libosmium/

# Boost
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake
BUILD_DEPENDS =	devel/boost \
		devel/cppcheck \
		devel/proj \
		devel/protozero \
		devel/sparsehash \
		geo/gdal \
		geo/geos

# include/osmium/io/detail/opl_parser_functions.hpp
# #include <utf8.h>
RUN_DEPENDS =	devel/utfcpp

.include <bsd.port.mk>
