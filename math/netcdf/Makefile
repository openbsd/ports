# $OpenBSD: Makefile,v 1.1.1.1 2000/12/26 12:22:53 reinhard Exp $ 
# $FreeBSD: ports/math/netcdf/Makefile,v 1.7 2000/06/16 21:51:39 asami Exp $
#

DISTNAME=	netcdf-3.5b3
CATEGORIES=	math
NEED_VERSION=	1.346
DISTFILES=	netcdf-3.5-beta3.tar.Z

MASTER_SITES=	ftp://unidata.ucar.edu/pub/netcdf/

HOMEPAGE=	http://www.unidata.ucar.edu/packages/netcdf/

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKSRC=			${WRKDIR}/netcdf-3.5-beta3/src

INSTALLS_SHLIB=		yes
CONFIGURE_STYLE= 	gnu dest

FAKE_FLAGS=     	DESTDIR="${WRKINST}"
MAKE_FLAGS=     	CPPFLAGS="-fPIC -DPIC -Df2cFortran -I${WRKSRC}/libsrc"


MAN1=	ncdump.1 ncgen.1
MAN3=	netcdf.3

post-build:
	@(cd ${WRKSRC}/libsrc && \
		${SETENV} ${MAKE_ENV} ${MAKE} linux_shared_library)
	@(cd ${WRKSRC}/cxx && \
		${SETENV} ${MAKE_ENV} ${MAKE} linux_shared_library)

post-install:
	${INSTALL_DATA} ${WRKSRC}/libsrc/libnetcdf.so ${PREFIX}/lib/libnetcdf.so.1.0
	ln -sf libnetcdf.so.1.0 ${PREFIX}/lib/libnetcdf.so
	${INSTALL_DATA} ${WRKSRC}/cxx/libnetcdf_c++.so ${PREFIX}/lib/libnetcdf_c++.so.1.0
	ln -sf libnetcdf_c++.so.1.0 ${PREFIX}/lib/libnetcdf_c++.so

.include <bsd.port.mk>
