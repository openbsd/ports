V =		12.0f
COMMENT =	roguelike game in a non-Euclidean world
CATEGORIES =	games x11

GH_ACCOUNT =	zenorogue
GH_PROJECT =	hyperrogue
GH_TAGNAME =	v${V}

HOMEPAGE =	https://roguetemple.com/z/hyper/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL SDL_gfx SDL_mixer SDL_ttf
WANTLIB += c m png z

# C++11
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/sdl-gfx \
		devel/sdl-mixer \
		devel/sdl-ttf \
		graphics/glew \
		graphics/png

CXXFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include \
			-DHYPERPATH="\\\"${LOCALBASE}/share/hyperrogue/\\\""
LDFLAGS +=	-L${LOCALBASE}/lib -L${X11BASE}/lib

MAKE_ENV +=	CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}" \
		LDFLAGS="${LDFLAGS}" CXX="${CXX}" \
		HYPERROGUE_USE_GLEW=1 \
		HYPERROGUE_USE_PNG=1

USE_GMAKE =	Yes
NO_TEST =	Yes
ALL_TARGET =	hyperrogue

# There is no install target
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hyperrogue ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/hyperrogue
	${INSTALL_DATA_DIR} ${PREFIX}/share/hyperrogue/sounds
	${INSTALL_DATA_DIR} ${PREFIX}/share/hyperrogue/music

	${INSTALL_DATA} ${WRKSRC}/*.ttf \
			${WRKSRC}/*.dat \
			${WRKSRC}/hyperrogue-music.txt \
			${PREFIX}/share/hyperrogue
	${INSTALL_DATA} ${WRKSRC}/sounds/* ${PREFIX}/share/hyperrogue/sounds
	${INSTALL_DATA} ${WRKSRC}/music/* ${PREFIX}/share/hyperrogue/music

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hyperrogue
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/hyperrogue

.include <bsd.port.mk>
