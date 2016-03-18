# $OpenBSD: Makefile,v 1.6 2016/03/18 23:12:16 naddy Exp $

COMMENT =		physics library

V =			2.83.6
DISTNAME =		bullet-${V}

SHARED_LIBS +=  BulletCollision           1.0 # 2.79
SHARED_LIBS +=  BulletDynamics            1.0 # 2.79
SHARED_LIBS +=  BulletSoftBody            1.0 # 2.79
SHARED_LIBS +=  LinearMath                1.0 # 2.79
SHARED_LIBS +=  Bullet2FileLoader         0.0 # 2.83
SHARED_LIBS +=  Bullet3Collision          0.0 # 2.83
SHARED_LIBS +=  Bullet3Common             0.0 # 2.83
SHARED_LIBS +=  Bullet3Dynamics           0.0 # 2.83
SHARED_LIBS +=  Bullet3Geometry           0.0 # 2.83
SHARED_LIBS +=  Bullet3OpenCL_clew        0.0 # 2.83

CATEGORIES =		devel

HOMEPAGE =		http://bulletphysics.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITES_GITHUB}
GH_ACCOUNT =		bulletphysics
GH_PROJECT =		bullet3
GH_TAGNAME =		$V

WANTLIB += m stdc++

MODULES =		devel/cmake
BUILD_DEPENDS =		graphics/freeglut

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_CPU_DEMOS=OFF \
			-DBUILD_EXTRAS=OFF \
			-DINSTALL_LIBS=ON \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DCMAKE_MODULE_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

CFLAGS +=		-I${X11BASE}/include
CXXFLAGS +=		-I${X11BASE}/include

post-extract:
	perl -pi -e 's/\015//g' \
	${WRKSRC}/src/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/OpenCLC10/*

.include <bsd.port.mk>
