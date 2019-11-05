# $OpenBSD: Makefile,v 1.8 2019/11/05 10:18:53 rsadowski Exp $

QT5NAME =		QtGamepad
COMMENT-main =		Qt5 gamepad events handling components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =		Qt5Gamepad		0.1

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick SDL2 m

LIB_DEPENDS =		devel/sdl2 \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
