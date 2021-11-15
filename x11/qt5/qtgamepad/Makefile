# $OpenBSD: Makefile,v 1.11 2021/11/15 21:23:31 rsadowski Exp $

QT5NAME =		QtGamepad
COMMENT-main =		Qt5 gamepad events handling components

REVISION-main =		0
REVISION-examples =	0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Gamepad                    1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick SDL2 m

LIB_DEPENDS =		devel/sdl2 \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
