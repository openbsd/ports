# $OpenBSD: Makefile,v 1.3 2011/06/05 14:28:53 jasper Exp $

PKG_ARCH =	*
COMMENT =	lightweight C++ template library for linear algebra
CATEGORIES =	math devel
HOMEPAGE =	http://eigen.tuxfamily.org/
MASTER_SITES =	http://bitbucket.org/eigen/eigen/get/
DIST_SUBDIR =	eigen
VERSION =	2.0.14
DISTNAME =	${VERSION}
PKGNAME =	eigen2-${VERSION}
WRKDIST =	${WRKDIR}/eigen-eigen-f30db88dec8b
REVISION =	0

# relaxed GPL (LGPL for template libs)

PERMIT_PACKAGE_CDROM =   	Yes
PERMIT_PACKAGE_FTP =     	Yes
PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_DISTFILES_FTP =  	Yes


MODULES =		devel/cmake
CONFIGURE_STYLE =	cmake
NO_REGRESS=		Yes
# CONFIGURE_ARGS =	-DEIGEN_BUILD_TESTS:BOOL=ON \
# 			-DEIGEN_BUILD_EXAMPLES:BOOL=ON

.include <bsd.port.mk>
