COMMENT=	library for machine-independent, array-oriented data access

V=		4.8.1
NAME=		netcdf
DISTNAME=	${NAME}-c-${V}
PKGNAME=	${NAME}-${V}

CATEGORIES=	math

SHARED_LIBS=	netcdf		8.0 # 19.0

HOMEPAGE=	http://www.unidata.ucar.edu/software/netcdf/

MAINTAINER=	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c m z pthread execinfo
WANTLIB+=		crypto ssl
WANTLIB+=		hdf5 hdf5_hl

LIB_DEPENDS =		math/hdf5

TEST_DEPENDS=		net/curl \
			shells/bash \
			textproc/gdiff

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://downloads.unidata.ucar.edu/netcdf-c/$V/

MODULES=		fortran
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo" \
			CPPFLAGS="-I${LOCALBASE}/include -DH5_USE_110_API" \
			ac_cv_lib_zip_zip_open=

CONFIGURE_ARGS+=	--enable-shared \
			--disable-doxygen \
			--enable-netcdf-4 \
			--enable-dap \
			--prefix=${PREFIX} \
			FC=egfortran

USE_GMAKE=		Yes
SEPARATE_BUILD=		Yes

# https://github.com/Unidata/netcdf-c/issues/1347#issuecomment-467633543
# "Actually, I did not intend the .so files in netcdf-c/plugins to be
# installed. They are intended only for testing and examples"
post-install:
	rm ${PREFIX}/lib/libh5bzip2.{a,la,so}

.include <bsd.port.mk>
