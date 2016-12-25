# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:14 zhuk Exp $

QT5NAME =		QtQuickControls
COMMENT-main =		Qt Quick based UI controls

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB =		GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Widgets
WANTLIB +=		m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
