# $OpenBSD: Makefile,v 1.5 2019/07/12 21:02:23 sthen Exp $

PKG_ARCH=	*
COMMENT=	lightweight C++ template library for linear algebra
CATEGORIES=	math devel
HOMEPAGE=	http://eigen.tuxfamily.org/
MASTER_SITES=	https://download.tuxfamily.org/eigen/
DISTNAME=	eigen-1.0.5
WRKDIST=	${WRKDIR}/eigen

# relaxed GPL (LGPL for template libs)

PERMIT_PACKAGE=	Yes

# eigen `needs' cmake to build tests. But since it's a template library,
# simply install the header files.

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/eigen
	${INSTALL_DATA} ${WRKDIST}/src/*.h ${PREFIX}/include/eigen

NO_BUILD=		Yes
NO_TEST=		Yes

# this is what would be needed for a full build
# note that the qt4 stuff needs to be revisited for full linking
#MODULES=		devel/cmake
#CONFIGURE_STYLE=	cmake
#CONFIGURE_ARGS=	-DBUILD_TESTS:BOOL=ON -DBUILD_EXAMPLES:BOOL=ON

.include <bsd.port.mk>
