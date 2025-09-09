COMMENT =		manipulate and analyse climate and NWP model data

DISTNAME =		cdo-2.5.3

CATEGORIES =		geo

HOMEPAGE =		https://code.mpimet.mpg.de/projects/cdo

MAINTAINER =		Marco van Hulten <marco@hulten.org>

# BSD-3-Clause
PERMIT_PACKAGE =	Yes

# number changes at newer version
SITES =			https://code.mpimet.mpg.de/attachments/download/30045/

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		math/netcdf \
			math/hdf5 \
			math/udunits \
			geo/eccodes

WANTLIB += ${COMPILER_LIBCXX} aec blosc bz2 c crypto curl eccodes
WANTLIB += eccodes_memfs execinfo expat hdf5 hdf5_hl jasper jpeg
WANTLIB += m netcdf nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl
WANTLIB += openjp2 ssl sz udunits2 xml2 z zip zstd

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_ARGS =	--with-netcdf=$(LOCALBASE) \
			--with-hdf5=$(LOCALBASE) \
			--with-eccodes=$(LOCALBASE) \
			--with-udunits2=$(LOCALBASE) \
			--disable-util-linux-uuid \
			--disable-ossp-uuid \
			--enable-dce-uuid

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
