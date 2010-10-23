# $OpenBSD: Makefile,v 1.15 2010/10/23 15:09:57 steven Exp $ 
# $FreeBSD: ports/math/netcdf/Makefile,v 1.7 2000/06/16 21:51:39 asami Exp $

COMMENT=	library for machine-independent, array-oriented data access

DISTNAME=	netcdf-3.6.2
CATEGORIES=	math

SHARED_LIBS=	netcdf		4.0 \
		netcdff		4.0 \
		netcdf_c++	4.0

HOMEPAGE=	http://www.unidata.ucar.edu/packages/netcdf/

MAINTAINER=	Tom Knienieder <tom@knienieder.com>
MODULES =	fortran
MODFORTRAN_COMPILER = g77
BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} 

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

MASTER_SITES=		ftp://ftp.unidata.ucar.edu/pub/netcdf/

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-Df2cFortran"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-f90

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =	Yes
SEPARATE_BUILD=		concurrent

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netcdf
	@cd ${WRKSRC}/man && ${INSTALL_DATA} *.txt *.pdf \
		${PREFIX}/share/doc/netcdf

.include <bsd.port.mk>
