COMMENT =	physics library

GH_ACCOUNT =	bulletphysics
GH_PROJECT =	bullet3
GH_TAGNAME =	3.21
DISTNAME =	bullet-${GH_TAGNAME}

SHARED_LIBS +=  BulletCollision           5.0 # 2.79
SHARED_LIBS +=  BulletDynamics            5.0 # 2.79
SHARED_LIBS +=  BulletFileLoader          1.0 # 2.87
SHARED_LIBS +=  BulletInverseDynamics     3.0 # 2.83
SHARED_LIBS +=  BulletInverseDynamicsUtils 1.0 # 2.87
SHARED_LIBS +=  BulletRobotics            1.0 # 2.87
SHARED_LIBS +=  BulletSoftBody            5.0 # 2.79
SHARED_LIBS +=  BulletWorldImporter       1.0 # 2.87
SHARED_LIBS +=  BulletXmlWorldImporter    1.0 # 2.87
SHARED_LIBS +=  LinearMath                5.0 # 2.79
SHARED_LIBS +=  ConvexDecomposition       1.0 # 2.87
SHARED_LIBS +=  GIMPACTUtils              1.0 # 2.87
SHARED_LIBS +=  HACD                      1.0 # 2.87
SHARED_LIBS +=  Bullet2FileLoader         4.0 # 2.83
SHARED_LIBS +=  Bullet3Collision          4.0 # 2.83
SHARED_LIBS +=  Bullet3Common             4.0 # 2.83
SHARED_LIBS +=  Bullet3Dynamics           4.0 # 2.83
SHARED_LIBS +=  Bullet3Geometry           4.0 # 2.83
SHARED_LIBS +=  Bullet3OpenCL_clew        4.0 # 2.83
SHARED_LIBS +=  BulletExampleBrowserLib   0.0 # 3.20
SHARED_LIBS +=  BulletRoboticsGUI         0.0 # 3.20
SHARED_LIBS +=  BussIK                    0.0 # 3.20
SHARED_LIBS +=  OpenGLWindow              0.0 # 3.20
SHARED_LIBS +=  gwen                      0.0 # 3.20

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
			-DCMAKE_EXE_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DUSE_DOUBLE_PRECISION=ON

NO_TEST =		Yes

CFLAGS +=		-I${X11BASE}/include
CXXFLAGS +=		-I${X11BASE}/include

post-install:
	rm -rf ${PREFIX}/include/bullet/pybullet

.include <bsd.port.mk>
