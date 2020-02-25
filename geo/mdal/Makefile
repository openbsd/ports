# $OpenBSD: Makefile,v 1.7 2020/02/25 12:16:28 landry Exp $

COMMENT =	mesh data abstration library

GH_ACCOUNT=	lutraconsulting
GH_PROJECT =	MDAL
GH_TAGNAME =	0.5.0

PKGNAME =	${GH_PROJECT:L}-${GH_TAGNAME}

SHARED_LIBS =	mdal 2.0

CATEGORIES =	geo devel textproc

HOMEPAGE =	http://www.mdal.xyz/

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

WANTLIB += ${COMPILER_LIBCXX} c gdal hdf5 m netcdf xml2 z

.include <bsd.port.mk>
