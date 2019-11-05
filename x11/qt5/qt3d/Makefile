# $OpenBSD: Makefile,v 1.12 2019/11/05 10:18:53 rsadowski Exp $

# TODO: port Assimp and switch qt3d to it after Assimp >3.3.1 gets
# released.

QT5NAME =		Qt3D
COMMENT-main =		Qt5 components for 3D graphics

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt53DCore		1.2
SHARED_LIBS +=  Qt53DInput		1.2
SHARED_LIBS +=  Qt53DLogic		1.2
SHARED_LIBS +=  Qt53DQuick		1.2
SHARED_LIBS +=  Qt53DQuickInput		1.2
SHARED_LIBS +=  Qt53DQuickRender	1.2
SHARED_LIBS +=  Qt53DRender		1.2
SHARED_LIBS +=  Qt53DAnimation		0.1
SHARED_LIBS +=  Qt53DExtras		0.1
SHARED_LIBS +=  Qt53DQuickAnimation	0.1
SHARED_LIBS +=  Qt53DQuickExtras	0.1
SHARED_LIBS +=  Qt53DQuickScene2D	0.1

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gamepad
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Quick c m z

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS-examples =	x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtgamepad>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
