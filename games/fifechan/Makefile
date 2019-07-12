# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:17 sthen Exp $

COMMENT =	graphical user interface library for games

GH_ACCOUNT =	fifengine
GH_PROJECT =	fifechan
GH_TAGNAME =	0.1.4
REVISION =	0

SHARED_LIBS +=  fifechan                  0.0 # 0.1
SHARED_LIBS +=  fifechan_allegro          0.0 # 0.1
SHARED_LIBS +=  fifechan_irrlicht         0.0 # 0.1
SHARED_LIBS +=  fifechan_opengl           0.0 # 0.1
SHARED_LIBS +=  fifechan_sdl              0.0 # 0.1

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

NO_TEST =		Yes

.include <bsd.port.mk>
