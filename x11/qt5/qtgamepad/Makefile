# $OpenBSD: Makefile,v 1.4 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtGamepad
REVISION =		0
COMMENT-main =		Qt5 gamepad events handling components

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =		Qt5Gamepad		0.0

WANTLIB =  ${COMPILER_LIBCXX} pthread
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick SDL2 m

LIB_DEPENDS =		devel/sdl2 \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
