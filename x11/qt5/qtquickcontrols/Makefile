# $OpenBSD: Makefile,v 1.7 2017/07/29 00:07:14 zhuk Exp $

QT5NAME =		QtQuickControls
REVISION =		0
COMMENT-main =		Qt Quick based UI controls

MULTI_PACKAGES =	-main -examples

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Widgets
WANTLIB += m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
