# $OpenBSD: Makefile,v 1.1.1.1 2021/10/27 01:13:41 namn Exp $

COMMENT =	first person survival horror game

DISTNAME =	amnesia-tdd-0.0pl20211020

GH_ACCOUNT =	shamazmazum
GH_PROJECT =	AmnesiaTheDarkDescent
GH_COMMIT =	11717474d4c0b6a7c0aca72dfd36efb6dedc50ed

CATEGORIES =	games

HOMEPAGE =	https://www.amnesiagame.com/

# GPLv3+: amnesia-tdd
# zlib: AngelScript, Newton Dynamics and OALWrapper
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU IL SDL2 c m ogg openal
WANTLIB += theora vorbis vorbisfile z

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl2 \
		graphics/DevIL \
		graphics/glew \
		multimedia/libtheora

CONFIGURE_ARGS =	-DSYSTEMWIDE_RESOURCES=ON \
			-DSYSTEMWIDE_RESOURCES_LOCATION="${PREFIX}/share/amnesia-tdd"

WRKSRC =	${WRKDIST}/amnesia/src

post-install:
# create empty data directory
	${INSTALL_DATA_DIR} ${PREFIX}/share/amnesia-tdd
# rename binary to avoid name conflict with other amnesia ports
	@mv ${PREFIX}/bin/Amnesia{,-tdd}

.include <bsd.port.mk>
