# $OpenBSD: Makefile,v 1.1.1.1 2018/07/05 05:17:52 bentley Exp $

COMMENT =	fast, flexible library for working with OpenStreetMap data

GH_ACCOUNT =	osmcode
GH_PROJECT =	libosmium
GH_TAGNAME =	v2.14.0

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

.include <bsd.port.mk>
