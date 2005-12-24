# $OpenBSD: Makefile,v 1.7 2005/12/24 14:45:38 steven Exp $ 
# $FreeBSD: ports/math/netcdf/Makefile,v 1.7 2000/06/16 21:51:39 asami Exp $
#

COMMENT=	"library for machine-independent, array-oriented data access"

DISTNAME=	netcdf-3.5.0
CATEGORIES=	math

SHARED_LIBS=	netcdf		1.0 \
		netcdf_c++	1.0

HOMEPAGE=	http://www.unidata.ucar.edu/packages/netcdf/

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

# BSD-like
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

MASTER_SITES=	ftp://unidata.ucar.edu/pub/netcdf/
EXTRACT_SUFX=	.tar.Z

WRKSRC=			${WRKDIST}/src

CONFIGURE_STYLE= 	gnu dest
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

MAKE_FLAGS=     	CPPFLAGS="-fPIC -DPIC -Df2cFortran -I${WRKSRC}/libsrc"

REGRESS_DEPENDS=	::math/netcdf

post-build:
	@(cd ${WRKSRC}/libsrc && \
		${SETENV} ${MAKE_ENV} ${MAKE} LIBVER=${LIBnetcdf_VERSION} shared_library)
	@(cd ${WRKSRC}/cxx && \
		${SETENV} ${MAKE_ENV} ${MAKE} LIBVER=${LIBnetcdf_c++_VERSION} shared_library)

post-install:
	${INSTALL_DATA} \
		${WRKSRC}/libsrc/libnetcdf.so.${LIBnetcdf_VERSION} \
		${WRKSRC}/cxx/libnetcdf_c++.so.${LIBnetcdf_c++_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
