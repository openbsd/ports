# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:14 zhuk Exp $

QT5NAME =		QtGamepad
REVISION =		0
COMMENT-main =		Qt5 gamepad events handling components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =		Qt5Gamepad		0.0

WANTLIB =  ${COMPILER_LIBCXX} pthread
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick SDL2 m

LIB_DEPENDS =		devel/sdl2 \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
