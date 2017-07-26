# $OpenBSD: Makefile,v 1.12 2017/07/26 22:45:24 sthen Exp $

PORTROACH =		limitw:1,even

COMMENT =		3D graphics toolkit

V =			3.4.0
DISTNAME =		OpenSceneGraph-${V}
PKGNAME =		openscenegraph-${V}
REVISION =		2

SUBST_VARS +=		V

SHARED_LIBS  =  OpenThreads               1.0 # 2.6
SHARED_LIBS +=  osg                       1.0 # 3.0
SHARED_LIBS +=  osgAnimation              1.0 # 3.0
SHARED_LIBS +=  osgDB                     1.0 # 3.0
SHARED_LIBS +=  osgFX                     1.0 # 3.0
SHARED_LIBS +=  osgGA                     1.0 # 3.0
SHARED_LIBS +=  osgManipulator            1.0 # 3.0
SHARED_LIBS +=  osgParticle               1.0 # 3.0
SHARED_LIBS +=  osgPresentation           1.0 # 3.0
SHARED_LIBS +=  osgQt                     1.0 # 3.0
SHARED_LIBS +=  osgShadow                 1.0 # 3.0
SHARED_LIBS +=  osgSim                    1.0 # 3.0
SHARED_LIBS +=  osgTerrain                1.0 # 3.0
SHARED_LIBS +=  osgText                   1.0 # 3.0
SHARED_LIBS +=  osgUtil                   1.0 # 3.0
SHARED_LIBS +=  osgUI                     0.0 # 3.4
SHARED_LIBS +=  osgViewer                 1.0 # 3.0
SHARED_LIBS +=  osgVolume                 1.0 # 3.0
SHARED_LIBS +=  osgWidget                 1.0 # 3.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.openscenegraph.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# OSGPL (see LICENSE.txt)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Half Iex IlmImf IlmThread QtGui QtOpenGL SDL X11
WANTLIB += Xrandr avcodec avdevice avformat avresample avutil
WANTLIB += c cairo curl freetype gdk_pixbuf-2.0 gif gio-2.0 glib-2.0
WANTLIB += gobject-2.0 intl jasper jpeg m png poppler-glib pthread
WANTLIB += rsvg-2 ${COMPILER_LIBCXX} swresample swscale tiff z

MASTER_SITES =		${HOMEPAGE}/downloads/stable_releases/OpenSceneGraph-$V/source/
EXTRACT_SUFX =		.zip

MODULES =		devel/cmake \
			x11/qt4
LIB_DEPENDS =		graphics/openexr \
			graphics/ffmpeg \
			graphics/gdk-pixbuf2 \
			graphics/giflib \
			net/curl \
			print/poppler \
			x11/gnome/librsvg

CONFIGURE_ARGS =	-DDESIRED_QT_VERSION=4 \
			-DOSG_USE_AGGRESSIVE_WARNINGS=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
