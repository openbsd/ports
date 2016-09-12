# $OpenBSD: Makefile,v 1.7 2016/09/12 22:20:36 naddy Exp $

COMMENT =		widgets library for graphics engines

V =			0.8.5
DISTNAME =		cegui-${V}

PATCHORIG =		.orig.port

SHARED_LIBS +=  CEGUIBase-0			0.0 # 3.1
SHARED_LIBS +=  CEGUICommonDialogs-0		0.0 # 3.1
SHARED_LIBS +=  CEGUIIrrlichtRenderer-0		0.0 # 3.1
SHARED_LIBS +=  CEGUIOgreRenderer-0		0.0 # 3.1
SHARED_LIBS +=  CEGUIOpenGLRenderer-0		0.0 # 3.1
SHARED_LIBS +=	CEGUIFreeImageImageCodec	0.0
SHARED_LIBS +=	CEGUIExpatParser		0.0

CATEGORIES =		x11

HOMEPAGE =		http://cegui.org.uk/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU Irrlicht OIS OgreMain SDL2 SDL2_image boost_system-mt
WANTLIB += boost_thread-mt c expat freeimage freetype iconv m pcre pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=crayzedsgui/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS +=	c++
BUILD_DEPENDS =		graphics/glm
LIB_DEPENDS =		x11/ogre \
			x11/irrlicht \
			converters/libiconv \
			devel/pcre \
			graphics/glew \
			devel/sdl2-image \
			devel/ois

CONFIGURE_ARGS +=	-DCEGUI_BUILD_PYTHON_MODULES=OFF \
			-DCEGUI_BUILD_XMLPARSER_XERCES=OFF \
			-DCEGUI_BUILD_XMLPARSER_LIBXML2=OFF \
			-DCEGUI_BUILD_XMLPARSER_RAPIDXML=OFF \
			-DCEGUI_BUILD_XMLPARSER_TINYXML=OFF \
			-DCEGUI_BUILD_IMAGECODEC_SILLY=OFF \
			-DCEGUI_BUILD_IMAGECODEC_DEVIL=OFF \
			-DCEGUI_BUILD_IMAGECODEC_CORONA=OFF \
			-DCEGUI_BUILD_IMAGECODEC_STB=OFF \
			-DCEGUI_BUILD_IMAGECODEC_TGA=OFF \
			-DCEGUI_BUILD_IMAGECODEC_PVR=OFF \
			-DCEGUI_USE_FRIBIDI=OFF \
			-DCEGUI_BUILD_LUA_MODULE=OFF \
			-DFREETYPE_H_PATH_ft2build=${X11BASE}/include/freetype2 \
			-DFREETYPE_H_PATH_ftconfig=${X11BASE}/include/freetype2/config


CXXFLAGS +=		-pthread -I${X11BASE}/include -I${LOCALBASE}/include

NO_TEST =		Yes

.include <bsd.port.mk>
