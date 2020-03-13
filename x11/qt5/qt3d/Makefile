# $OpenBSD: Makefile,v 1.15 2020/03/13 16:53:49 rsadowski Exp $

QT5NAME =		Qt3D
COMMENT-main =		Qt5 components for 3D graphics

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt53DCore                    2.0 # 5.9
SHARED_LIBS +=  Qt53DInput                   2.0 # 5.9
SHARED_LIBS +=  Qt53DLogic                   2.0 # 5.9
SHARED_LIBS +=  Qt53DQuick                   2.0 # 5.9
SHARED_LIBS +=  Qt53DQuickInput              2.0 # 5.9
SHARED_LIBS +=  Qt53DQuickRender             2.0 # 5.9
SHARED_LIBS +=  Qt53DRender                  2.0 # 5.9
SHARED_LIBS +=  Qt53DAnimation               1.0 # 5.9
SHARED_LIBS +=  Qt53DExtras                  1.0 # 5.9
SHARED_LIBS +=  Qt53DQuickAnimation          1.0 # 5.9
SHARED_LIBS +=  Qt53DQuickExtras             1.0 # 5.9
SHARED_LIBS +=  Qt53DQuickScene2D            1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gamepad
WANTLIB += Qt5Gui Qt5Network Qt5OpenGLExtensions Qt5Qml Qt5Quick
WANTLIB += assimp c m

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS-examples =	x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		multimedia/assimp>=3.3.2 \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtgamepad>=${QT5_VERSION},<${QT5_NEXT_VERSION}

CONFIGURE_ARGS +=	-assimp=system

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
