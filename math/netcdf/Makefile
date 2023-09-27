COMMENT=	library for machine-independent, array-oriented data access

V=		4.9.2
NAME=		netcdf
DISTNAME=	${NAME}-c-${V}
PKGNAME=	${NAME}-${V}
REVISION=	3

CATEGORIES=	math

SHARED_LIBS=	netcdf		9.0 # 21.2

HOMEPAGE=	http://www.unidata.ucar.edu/software/netcdf/

MAINTAINER=	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c crypto curl execinfo hdf5 hdf5_hl iconv lzma
WANTLIB += m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls pthread
WANTLIB += ssl xml2 z zip zstd

# curl is needed for DAP support
LIB_DEPENDS=		archivers/libzip \
			math/hdf5 \
			net/curl \
			textproc/libxml

TEST_DEPENDS=		shells/bash \
			textproc/gdiff

SITES=			https://downloads.unidata.ucar.edu/netcdf-c/$V/

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo" \
			CPPFLAGS="-I${LOCALBASE}/include -DH5_USE_110_API" \

CONFIGURE_ARGS+=	--enable-shared \
			--disable-doxygen \
			--enable-netcdf-4 \
			--enable-dap \
			--prefix=${PREFIX}

USE_GMAKE=		Yes
SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
