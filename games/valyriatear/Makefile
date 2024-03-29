NOT_FOR_ARCHS=	${BE_ARCHS}

V =		1.1.0
COMMENT =	free J-RPG game
DISTNAME =	ValyriaTear-src-with-deps-${V}
PKGNAME =	valyriatear-${V}
CATEGORIES =	games x11
REVISION =	1

HOMEPAGE =	https://valyriatear.blogspot.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Main game is GPLv2+
# Art/music a variety of CC and GPL.
# Fonts are OFL 1.1
# For specific details, see the LICENSES.txt file.
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU ICE SDL2 SDL2_image
WANTLIB += SDL2_ttf SM X11 Xext c iconv intl lua5.1 m ogg openal
WANTLIB += png vorbis vorbisfile z

SITES =	https://github.com/ValyriaTear/ValyriaTear/releases/download/${V}/

# C++11
COMPILER =	base-clang ports-gcc
MODCMAKE_LDFLAGS = 	-L${X11BASE}/lib -L${LOCALBASE}/lib

MODULES =	devel/cmake \
		lang/lua

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl2-image \
		devel/sdl2-ttf \
		graphics/glew

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

WRKDIST =	${WRKDIR}/ValyriaTear

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/valyriatear
	${INSTALL_DATA} ${WRKSRC}/{COPYING.{CC{-BY-3,-BY-SA-3,0},GPL-{2,3}},LICENSES.txt,MANUAL} ${PREFIX}/share/doc/valyriatear
	${INSTALL_DATA} ${WRKSRC}/data/fonts/{GPL,OFL-1.1}.txt ${PREFIX}/share/doc/valyriatear
	${INSTALL_MAN} ${WRKSRC}/doc/valyriatear.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
