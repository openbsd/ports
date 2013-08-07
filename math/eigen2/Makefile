# $OpenBSD: Makefile,v 1.7 2013/08/07 21:57:58 naddy Exp $

PKG_ARCH =	*
COMMENT =	lightweight C++ template library for linear algebra
CATEGORIES =	math devel
HOMEPAGE =	http://eigen.tuxfamily.org/
MASTER_SITES =	http://spacehopper.org/mirrors/eigen/
#MASTER_SITES =	https://bitbucket.org/eigen/eigen/get/
DIST_SUBDIR =	eigen
VERSION =	2.0.14
DISTNAME =	${VERSION}
PKGNAME =	eigen2-${VERSION}
WRKDIST =	${WRKDIR}/eigen-eigen-f30db88dec8b
REVISION =	1

# relaxed GPL (LGPL for template libs)
PERMIT_PACKAGE_CDROM =	 Yes


MODULES =		devel/cmake
CONFIGURE_STYLE =	cmake
NO_TEST=		Yes
# CONFIGURE_ARGS =	-DEIGEN_BUILD_TESTS:BOOL=ON \
#			-DEIGEN_BUILD_EXAMPLES:BOOL=ON

.include <bsd.port.mk>
