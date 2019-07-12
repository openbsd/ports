# $OpenBSD: Makefile,v 1.16 2019/07/12 20:44:04 sthen Exp $

COMMENT =	physics library

GH_ACCOUNT =	bulletphysics
GH_PROJECT =	bullet3
GH_TAGNAME =	2.87
DISTNAME =	bullet-${GH_TAGNAME}

SHARED_LIBS +=  BulletCollision           4.0 # 2.79
SHARED_LIBS +=  BulletDynamics            4.0 # 2.79
SHARED_LIBS +=  BulletFileLoader          0.0 # 2.87
SHARED_LIBS +=  BulletInverseDynamics     2.0 # 2.83
SHARED_LIBS +=  BulletInverseDynamicsUtils 0.0 # 2.87
SHARED_LIBS +=  BulletRobotics            0.0 # 2.87
SHARED_LIBS +=  BulletSoftBody            4.0 # 2.79
SHARED_LIBS +=  BulletWorldImporter       0.0 # 2.87
SHARED_LIBS +=  BulletXmlWorldImporter    0.0 # 2.87
SHARED_LIBS +=  LinearMath                4.0 # 2.79
SHARED_LIBS +=  ConvexDecomposition       0.0 # 2.87
SHARED_LIBS +=  GIMPACTUtils              0.0 # 2.87
SHARED_LIBS +=  HACD                      0.0 # 2.87
SHARED_LIBS +=  Bullet2FileLoader         3.0 # 2.83
SHARED_LIBS +=  Bullet3Collision          3.0 # 2.83
SHARED_LIBS +=  Bullet3Common             3.0 # 2.83
SHARED_LIBS +=  Bullet3Dynamics           3.0 # 2.83
SHARED_LIBS +=  Bullet3Geometry           3.0 # 2.83
SHARED_LIBS +=  Bullet3OpenCL_clew        3.0 # 2.83

CATEGORIES =		devel

HOMEPAGE =		http://bulletphysics.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		graphics/freeglut

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_CPU_DEMOS=OFF \
			-DBUILD_EXTRAS=ON \
			-DBUILD_PYBULLET=OFF \
			-DINSTALL_LIBS=ON \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DCMAKE_MODULE_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

CFLAGS +=		-I${X11BASE}/include
CXXFLAGS +=		-I${X11BASE}/include

.include <bsd.port.mk>
