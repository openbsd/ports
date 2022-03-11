COMMENT =	graphical user interface library for games

GH_ACCOUNT =	fifengine
GH_PROJECT =	fifechan
GH_TAGNAME =	0.1.5

SHARED_LIBS +=  fifechan                  1.0 # 0.1.5
SHARED_LIBS +=  fifechan_allegro          1.0 # 0.1.5
SHARED_LIBS +=  fifechan_irrlicht         1.0 # 0.1.5
SHARED_LIBS +=  fifechan_opengl           1.0 # 0.1.5
SHARED_LIBS +=  fifechan_sdl              1.0 # 0.1.5

CATEGORIES =	games

HOMEPAGE =	https://fifengine.github.io/fifechan/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLU Irrlicht SDL2 SDL2_image alleg m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake
LIB_DEPENDS =		devel/sdl2-image \
			games/allegro \
			x11/irrlicht
CONFIGURE_ARGS += 	-DENABLE_ALLEGRO=ON \
			-DBUILD_FIFECHAN_ALLEGRO_SHARED=ON \
			-DENABLE_IRRLICHT=ON \
			-DBUILD_FIFECHAN_IRRLICHT_SHARED=ON

NO_TEST =		Yes

.include <bsd.port.mk>
