COMMENT=	library for machine-independent, array-oriented data access

V=		4.9.2
NAME=		netcdf
DISTNAME=	${NAME}-c-${V}
PKGNAME=	${NAME}-${V}
REVISION=	1

CATEGORIES=	math

SHARED_LIBS=	netcdf		9.0 # 21.2

HOMEPAGE=	http://www.unidata.ucar.edu/software/netcdf/

MAINTAINER=	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		${COMPILER_LIBCXX} c m z pthread execinfo
WANTLIB+=		curl crypto nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_openssl ssl
WANTLIB+=		hdf5 hdf5_hl

BUILD_DEPENDS=		archivers/libzip

# curl is needed for DAP support
LIB_DEPENDS=		net/curl \
			math/hdf5

TEST_DEPENDS=		shells/bash \
			textproc/gdiff

MASTER_SITES=		https://downloads.unidata.ucar.edu/netcdf-c/$V/

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
