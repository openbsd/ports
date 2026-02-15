COMMENT =		CLI tools to manipulate and analyse netCDF/HDF/DAP data

DIST_TUPLE +=		github nco nco 5.3.6 .

SHARED_LIBS +=		nco	0.0 # 0.0

HOMEPAGE =		https://nco.sourceforge.net/

MAINTAINER =		Marco van Hulten <marco@hulten.org>

CATEGORIES =		geo

# BSD-3-Clause
PERMIT_PACKAGE =	Yes

WANTLIB += aec blosc bz2 c crypto curl execinfo expat gsl gslcblas
WANTLIB += hdf5 hdf5_hl iconv intl m netcdf nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_libressl pthread ssl sz udunits2 xml2
WANTLIB += z zip zstd

CONFIGURE_STYLE =	autoreconf
AUTORECONF =		./autogen.sh
AUTOCONF_VERSION =	2.72
AUTOMAKE_VERSION =	1.18
CONFIGURE_ENV =		MAKEINFO=${LOCALBASE}/bin/gmakeinfo \
			NETCDF_INC=$(LOCALBASE)/include \
			NETCDF_LIB=$(LOCALBASE)/lib
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

BUILD_DEPENDS =		print/texinfo

LIB_DEPENDS =		archivers/libaec \
			devel/gsl \
			math/netcdf \
			math/hdf5 \
			math/udunits \
			textproc/libxml \
			devel/gettext

.include <bsd.port.mk>
