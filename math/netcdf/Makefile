# $OpenBSD: Makefile,v 1.6 2004/12/27 07:16:44 alek Exp $ 
# $FreeBSD: ports/math/netcdf/Makefile,v 1.7 2000/06/16 21:51:39 asami Exp $
#

COMMENT=	"library for machine-independent, array-oriented data access"

DISTNAME=	netcdf-3.5.0
CATEGORIES=	math

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
		${SETENV} ${MAKE_ENV} ${MAKE} linux_shared_library)
	@(cd ${WRKSRC}/cxx && \
		${SETENV} ${MAKE_ENV} ${MAKE} linux_shared_library)

post-install:
	test -f ${WRKSRC}/libsrc/libnetcdf.so && ${INSTALL_DATA} \
		${WRKSRC}/libsrc/libnetcdf.so ${PREFIX}/lib/libnetcdf.so.1.0
	test -f ${WRKSRC}/cxx/libnetcdf_c++.so && ${INSTALL_DATA} \
		${WRKSRC}/cxx/libnetcdf_c++.so ${PREFIX}/lib/libnetcdf_c++.so.1.0

.include <bsd.port.mk>
