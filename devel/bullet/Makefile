# $OpenBSD: Makefile,v 1.8 2016/05/07 12:40:56 pascal Exp $

COMMENT =		physics library

V =			2.83.7
DISTNAME =		bullet-${V}
REVISION =		0

SHARED_LIBS +=  BulletCollision           2.0 # 2.79
SHARED_LIBS +=  BulletDynamics            2.0 # 2.79
SHARED_LIBS +=  BulletInverseDynamics     0.0 # 2.83
SHARED_LIBS +=  BulletSoftBody            2.0 # 2.79
SHARED_LIBS +=  LinearMath                2.0 # 2.79
SHARED_LIBS +=  Bullet2FileLoader         1.0 # 2.83
SHARED_LIBS +=  Bullet3Collision          1.0 # 2.83
SHARED_LIBS +=  Bullet3Common             1.0 # 2.83
SHARED_LIBS +=  Bullet3Dynamics           1.0 # 2.83
SHARED_LIBS +=  Bullet3Geometry           1.0 # 2.83
SHARED_LIBS +=  Bullet3OpenCL_clew        1.0 # 2.83

CATEGORIES =		devel

HOMEPAGE =		http://bulletphysics.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITES_GITHUB}
GH_ACCOUNT =		bulletphysics
GH_PROJECT =		bullet3
GH_TAGNAME =		$V

WANTLIB += m

MODULES =		devel/cmake gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
BUILD_DEPENDS =		graphics/freeglut

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_CPU_DEMOS=OFF \
			-DBUILD_EXTRAS=ON \
			-DINSTALL_LIBS=ON \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DCMAKE_MODULE_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

CFLAGS +=		-I${X11BASE}/include
CXXFLAGS +=		-I${X11BASE}/include

.include <bsd.port.mk>
