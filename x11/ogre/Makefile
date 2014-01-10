# $OpenBSD: Makefile,v 1.11 2014/01/10 14:47:10 dcoppa Exp $

BROKEN-mips64 =		missing atomic ops
BROKEN-mips64el =	missing atomic ops
BROKEN-hppa =		missing atomic ops

SHARED_ONLY =		Yes

COMMENT-main =		3D rendering engine
COMMENT-samples =	3D rendering engine, demos

V =			1.8.1
DISTNAME =		ogre_src_v${V:S/./-/g}
PKGNAME-main =		ogre-${V}
PKGNAME-samples =	ogre-samples-${V}
REVISION-main =		0

MULTI_PACKAGES =	-main -samples

SHARED_LIBS +=  OgreMain                  1.0 # 1.7
SHARED_LIBS +=  OgrePaging                1.0 # 1.7
SHARED_LIBS +=  OgreProperty              1.0 # 1.7
SHARED_LIBS +=  OgreRTShaderSystem        1.0 # 1.7
SHARED_LIBS +=  OgreTerrain               1.0 # 1.7

CATEGORIES =		x11

HOMEPAGE =		http://www.ogre3d.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xaw Xext Xt boost_date_time-mt
WANTLIB += boost_chrono-mt boost_system-mt boost_thread-mt c
WANTLIB += freeimage freetype m pthread stdc++ z zzip

WANTLIB-main = ${WANTLIB} GL GLU Xrandr
WANTLIB-samples += ${WANTLIB} OIS OgreMain OgrePaging OgreRTShaderSystem
WANTLIB-samples += OgreTerrain


MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ogre/}
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:STRING=Release \
			-DOGRE_INSTALL_SAMPLES=1

MODULES =		devel/cmake
LIB_DEPENDS =		graphics/freeimage \
			archivers/zziplib \
			devel/boost
LIB_DEPENDS-samples =	${LIB_DEPENDS} \
			devel/ois \
			x11/ogre,-main

NO_TEST =		Yes

pre-configure:
# Remove obsolete local FindFreetype.cmake module which is not
# compatible with Freetype 2.5
	rm ${WRKSRC}/CMake/Packages/FindFreetype.cmake

.include <bsd.port.mk>
