# $OpenBSD: Makefile,v 1.3 2019/05/29 05:23:27 landry Exp $

COMMENT =	mesh data abstration library

GH_ACCOUNT=	lutraconsulting
GH_PROJECT =	MDAL
GH_TAGNAME =	0.3.3

PKGNAME =	${GH_PROJECT:L}-${GH_TAGNAME}

SHARED_LIBS =	mdal 0.0

CATEGORIES =	geo devel textproc

HOMEPAGE =	http://www.mdal.xyz/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake

# uses std=gnu++11
COMPILER =	base-clang ports-gcc

# needs a version of netcdf with nc_inq_varids
LIB_DEPENDS =	math/netcdf>=4 \
		geo/gdal

BUILD_DEPENDS =	devel/gtest

WANTLIB += ${COMPILER_LIBCXX} c gdal hdf5 m netcdf xml2 z

.include <bsd.port.mk>
