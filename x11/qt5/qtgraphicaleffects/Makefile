# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:15 zhuk Exp $

QT5NAME =		QtGraphicalEffects
COMMENT-main =		UI effects library for Qt Quick

MULTI_PACKAGES =	-main -qch -html

WANTLIB =		GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
