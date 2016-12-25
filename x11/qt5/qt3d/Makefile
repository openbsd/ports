# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:15 zhuk Exp $

QT5NAME =		Qt3D
COMMENT-main =		Qt5 components for 3D graphics

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS +=  Qt53DCore               1.0
SHARED_LIBS +=  Qt53DInput              1.0
SHARED_LIBS +=  Qt53DLogic              1.0
SHARED_LIBS +=  Qt53DQuick              1.0
SHARED_LIBS +=  Qt53DQuickInput		1.0
SHARED_LIBS +=  Qt53DQuickRender	1.0
SHARED_LIBS +=  Qt53DRender		1.0

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		GL Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB-main +=		Qt5Quick c m pthread z

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS-examples =	x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
