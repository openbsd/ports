# $OpenBSD: Makefile,v 1.1.1.1 2017/11/04 22:03:17 bentley Exp $

COMMENT =	2D game engine

GH_ACCOUNT =	fifengine
GH_PROJECT =	fifengine
GH_TAGNAME =	0.4.1

CATEGORIES =	games

HOMEPAGE =	http://fifengine.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL SDL2 SDL2_image SDL2_ttf boost_filesystem-mt boost_regex-mt
WANTLIB += boost_system-mt fifechan fifechan_opengl fifechan_sdl
WANTLIB += m ogg openal png pthread python2.7 tinyxml vorbis
WANTLIB += vorbisfile z

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
