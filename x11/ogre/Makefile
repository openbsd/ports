# $OpenBSD: Makefile,v 1.32 2020/02/25 20:43:13 kmos Exp $

BROKEN-hppa =		missing atomic ops
BROKEN-alpha =		missing atomic ops
BROKEN-i386 =		MMX-related problems with clang build
BROKEN-sparc64 =	undefined reference to TiXml*
BROKEN-powerpc =	undefined reference to TiXml*

COMMENT-main =		3D rendering engine
COMMENT-samples =	3D rendering engine, demos

V =			1.9.0
DISTNAME =		ogre-$V
PKGNAME-main =		ogre-${V}
PKGNAME-samples =	ogre-samples-${V}
REVISION-main =		5
REVISION-samples =	5

MULTI_PACKAGES =	-main -samples

SHARED_LIBS +=  OgreMain                  2.0 # 1.7
SHARED_LIBS +=  OgrePaging                2.0 # 1.7
SHARED_LIBS +=  OgreProperty              2.0 # 1.7
SHARED_LIBS +=  OgreRTShaderSystem        2.0 # 1.7
SHARED_LIBS +=  OgreTerrain               2.0 # 1.7
SHARED_LIBS +=  OgreOverlay               0.0 # 1.9
SHARED_LIBS +=  OgreVolume                0.0 # 1.9

CATEGORIES =		x11

HOMEPAGE =		http://www.ogre3d.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xaw Xext Xt $(MODGCC4_ATOMICWANTLIB)
WANTLIB += boost_atomic-mt boost_date_time-mt
WANTLIB += boost_chrono-mt boost_system-mt boost_thread-mt c
WANTLIB += freeimage freetype m pthread z zzip
WANTLIB += ${COMPILER_LIBCXX}

WANTLIB-main = ${WANTLIB} GL GLU Xrandr tinyxml
WANTLIB-samples += ${WANTLIB} OIS OgreMain OgrePaging OgreRTShaderSystem
WANTLIB-samples += OgreTerrain OgreOverlay OgreVolume


MASTER_SITES =		https://bitbucket.org/sinbad/ogre/get/
DISTFILES =		ogre-$V${EXTRACT_SUFX}{v${V:S/./-/g}${EXTRACT_SUFX}}
#EXTRACT_SUFX =		.tar.bz2

CONFIGURE_ARGS +=	-DOGRE_INSTALL_SAMPLES=1

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc
LIB_DEPENDS =		graphics/freeimage \
			archivers/zziplib \
			devel/boost
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			textproc/tinyxml
LIB_DEPENDS-samples =	${LIB_DEPENDS} \
			devel/ois \
			x11/ogre,-main

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/sinbad-ogre-dd30349ea667

pre-configure:
# Remove obsolete local FindFreetype.cmake module which is not
# compatible with Freetype 2.5
	rm -f ${WRKSRC}/CMake/Packages/FindFreetype.cmake

.include <bsd.port.mk>
