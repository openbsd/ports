# $OpenBSD: Makefile,v 1.12 2020/09/11 06:00:15 kirby Exp $

BROKEN-powerpc =out of memory when compiling fifePYTHON_wrap.cxx
BROKEN-sparc64 =out of memory when compiling fifePYTHON_wrap.cxx

COMMENT =	2D game engine

GH_ACCOUNT =	fifengine
GH_PROJECT =	fifengine
GH_TAGNAME =	0.4.2

CATEGORIES =	games

HOMEPAGE =	https://www.fifengine.net/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLEW SDL2 SDL2_image SDL2_ttf boost_filesystem-mt
WANTLIB += boost_system-mt fifechan fifechan_opengl fifechan_sdl
WANTLIB += m openal png pthread ${MODPY_WANTLIB} tinyxml vorbis
WANTLIB += vorbisfile z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
BUILD_DEPENDS =		devel/swig>=3.0.12
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/boost \
			devel/sdl2-image \
			devel/sdl2-ttf \
			games/fifechan>=0.1.5 \
			graphics/glew \
			textproc/tinyxml
RUN_DEPENDS =		textproc/py-yaml${MODPY_FLAVOR}

CONFIGURE_ARGS += 	-DPYTHON_EXECUTABLE=${MODPY_BIN} \
			-Wno-dev

NO_TEST =		Yes

post-install:
	${MODPY_BIN} -m compileall ${WRKINST}/${MODPY_SITEPKG}

.include <bsd.port.mk>
