# $OpenBSD: Makefile,v 1.31 2017/07/26 22:45:26 sthen Exp $ 

BROKEN-powerpc=	fails to build
BROKEN-hppa =	fails to configure

COMMENT=	library for machine-independent, array-oriented data access

DISTNAME=	netcdf-3.6.2
REVISION =	5
CATEGORIES=	math

SHARED_LIBS=	netcdf		4.0 \
		netcdff		4.0 \
		netcdf_c++	4.0

HOMEPAGE=	http://www.unidata.ucar.edu/software/netcdf/

MAINTAINER=	Tom Knienieder <tom@knienieder.com>
MODULES =	fortran
MODFORTRAN_COMPILER = g77
BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS}

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX}

MASTER_SITES=		ftp://ftp.unidata.ucar.edu/pub/netcdf/

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-Df2cFortran"
CONFIGURE_ARGS+=	--enable-shared \
			--disable-f90

USE_GMAKE=		Yes
SEPARATE_BUILD=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netcdf
	@cd ${WRKSRC}/man && ${INSTALL_DATA} *.txt *.pdf \
		${PREFIX}/share/doc/netcdf

.include <bsd.port.mk>
