# $OpenBSD: Makefile,v 1.8 2017/10/24 10:12:19 rsadowski Exp $

QT5NAME =		QtQuickControls
COMMENT-main =		Qt Quick based UI controls

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
