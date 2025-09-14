COMMENT =	API and tools for decoding and encoding GRIB and BUFR

# "ecCodes only supports 64 bit platforms"
ONLY_FOR_ARCHS = ${LP64_ARCHS}

DISTNAME =	eccodes-2.44.66-Source
EXTRACT_SUFX =	-PRE-RELEASE.tar.gz
PKGNAME =	eccodes-2.44pre66

FIX_EXTRACT_PERMISSIONS = Yes

DPB_PROPERTIES = parallel

PORTROACH =	site:https://confluence.ecmwf.int/display/ECC/Releases

SHARED_LIBS +=	eccodes_f90	0.0
SHARED_LIBS +=	eccodes		0.0
SHARED_LIBS +=	eccodes_memfs	0.0

CATEGORIES =	geo

HOMEPAGE =	https://confluence.ecmwf.int/display/ECC

MAINTAINER =	Marco van Hulten <marco@hulten.org>

# Apache 2.0
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} aec c jasper jpeg m netcdf openjp2

# for releases (id relates to project and doesn't vary by version)
#SITES =	https://confluence.ecmwf.int/download/attachments/45757960/

# prerelease
SITES =		https://confluence.ecmwf.int/download/attachments/293728047/

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c c++ fortran

MODULES =	devel/cmake \
		fortran

LIB_DEPENDS =	archivers/libaec \
		graphics/jasper \
		graphics/jpeg \
		graphics/openjp2 \
		math/netcdf

# XXX remove DISABLE_OS_CHECK when OpenBSD is added upstream
CONFIGURE_ARGS = -DDISABLE_OS_CHECK=ON \
		-DENABLE_NETCDF=ON \
		-DENABLE_AEC=ON \
		-DENABLE_MEMFS=ON

TEST_ENV =	LD_LIBRARY_PATH=${WRKBUILD}/lib

.include <bsd.port.mk>
