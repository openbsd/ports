# $OpenBSD: Makefile,v 1.9 2020/01/07 20:22:07 zhuk Exp $

QT5NAME =		QtGamepad
COMMENT-main =		Qt5 gamepad events handling components
REVISION-main =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =		Qt5Gamepad		0.1

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick SDL2 m

LIB_DEPENDS =		devel/sdl2 \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
