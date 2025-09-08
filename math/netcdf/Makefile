USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT=	library for machine-independent, array-oriented data access

V=		4.9.3
NAME=		netcdf
DISTNAME=	${NAME}-c-${V}
PKGNAME=	${NAME}-${V}

CATEGORIES=	math

SHARED_LIBS=	netcdf		11.0 # 23.0

HOMEPAGE=	http://www.unidata.ucar.edu/software/netcdf/

MAINTAINER=	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc base-gcc

WANTLIB+=	${COMPILER_LIBCXX} aec blosc bz2 c crypto curl execinfo
WANTLIB+=	hdf5 hdf5_hl iconv lz4 lzma m nghttp2 nghttp3 ngtcp2
WANTLIB+=	ngtcp2_crypto_libressl pthread ssl snappy sz xml2 z zip zstd

# curl is needed for DAP support
LIB_DEPENDS=		archivers/blosc \
			archivers/libaec \
			archivers/libzip \
			math/hdf5 \
			net/curl \
			textproc/libxml

TEST_DEPENDS=		devel/libsigsegv \
			shells/bash \
			textproc/gdiff

SITES=			https://downloads.unidata.ucar.edu/netcdf-c/$V/

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo" \
			CPPFLAGS="-I${LOCALBASE}/include" \

CONFIGURE_ARGS+=	--enable-shared \
			--disable-doxygen \
			--enable-netcdf-4 \
			--enable-dap \
			--prefix=${PREFIX}

TEST_ENV=		CC=cc

USE_GMAKE=		Yes
SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
