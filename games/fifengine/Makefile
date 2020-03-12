# $OpenBSD: Makefile,v 1.10 2020/03/12 06:58:25 kirby Exp $

BROKEN-i386 =	std::bad_alloc when compiling fifePYTHON_wrap.cxx
BROKEN-powerpc =out of memory when compiling fifePYTHON_wrap.cxx
BROKEN-sparc64 =out of memory when compiling fifePYTHON_wrap.cxx

COMMENT =	2D game engine

GH_ACCOUNT =	fifengine
GH_PROJECT =	fifengine
GH_TAGNAME =	0.4.1
REVISION =	2

CATEGORIES =	games

HOMEPAGE =	https://www.fifengine.net/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL SDL2 SDL2_image SDL2_ttf boost_filesystem-mt boost_regex-mt
WANTLIB += boost_system-mt fifechan fifechan_opengl fifechan_sdl
WANTLIB += m ogg openal png pthread ${MODPY_WANTLIB} tinyxml vorbis
WANTLIB += vorbisfile z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/python
BUILD_DEPENDS =		devel/swig>=3.0.12
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/boost \
			devel/sdl2-image \
			devel/sdl2-ttf \
			games/fifechan \
			textproc/tinyxml
RUN_DEPENDS =		textproc/py-yaml

NO_TEST =		Yes

post-install:
	${MODPY_BIN} -m compileall ${WRKINST}/${MODPY_SITEPKG}

.include <bsd.port.mk>
