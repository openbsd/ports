# $OpenBSD: Makefile,v 1.18 2019/07/29 18:17:43 cwen Exp $

PORTROACH =		limitw:1,even

COMMENT =		3D graphics toolkit

V =			3.4.1
GH_ACCOUNT =		openscenegraph
GH_PROJECT =		OpenSceneGraph
GH_TAGNAME =		OpenSceneGraph-$V
DISTNAME =		openscenegraph-${V}
REVISION =		4

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
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Half Iex IlmImf IlmThread Qt5Core
WANTLIB += Qt5Gui Qt5OpenGL Qt5Widgets SDL X11 Xrandr avcodec
WANTLIB += avdevice avformat avresample avutil c cairo curl freetype
WANTLIB += gdal gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gobject-2.0 intl
WANTLIB += jasper jpeg m png poppler-glib rsvg-2 swresample swscale
WANTLIB += tiff z

MODULES =		devel/cmake \
			x11/qt5
LIB_DEPENDS =		devel/sdl \
			graphics/openexr \
			graphics/ffmpeg \
			graphics/gdk-pixbuf2 \
			graphics/giflib \
			geo/gdal \
			net/curl \
			print/poppler \
			x11/gnome/librsvg

CONFIGURE_ARGS =	-DDESIRED_QT_VERSION=5 \
			-DOSG_USE_AGGRESSIVE_WARNINGS=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
