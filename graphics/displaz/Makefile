# $OpenBSD: Makefile,v 1.8 2020/05/14 12:35:31 ajacoutot Exp $

COMMENT =	viewer for geospatial point clouds
GH_ACCOUNT =	c42f
GH_PROJECT =	displaz
GH_TAGNAME =	v0.4.0
REVISION =	2

HOMEPAGE =	http://c42f.github.io/displaz/

CATEGORIES =	graphics

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW Iex-2_5 Imath-2_5 Qt5Core
WANTLIB += Qt5Gui Qt5Network Qt5OpenGL Qt5Widgets c m

MODULES =	devel/cmake x11/qt5
LIB_DEPENDS =	graphics/glew>=2.0 \
		graphics/openexr

# links with static libLASlib.a
BUILD_DEPENDS =	textproc/py-docutils \
		converters/lastools

CONFIGURE_ARGS =	-DDISPLAZ_EMBED_GLEW=false \
			-DLASLIB_LIBRARY=${LOCALBASE}/lib/LASlib/libLASlib.a \
			-DLASLIB_INCLUDE_DIRS=${LOCALBASE}/include/LASlib/

SUBST_VARS +=	TRUEPREFIX
post-patch:
	${SUBST_CMD} ${WRKSRC}/src/gui/guimain.cpp

post-install:
	# glsl 1.4 works..
	 sed -i -e 's/^#version 150/#version 140/' ${PREFIX}/share/displaz/shaders/*.glsl

.include <bsd.port.mk>
