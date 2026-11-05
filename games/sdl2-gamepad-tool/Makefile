COMMENT =	sdl2 gamepad mapping tool

V =		1.4.2
PKGNAME =	sdl2-gamepad-tool-${V}
DIST_TUPLE +=	github General-Arcade sdl2-gamepad-tool v${V} .

CATEGORIES =	games
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Widgets
WANTLIB += SDL2 c m

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2 \
		x11/qt6/qtbase

.include <bsd.port.mk>
