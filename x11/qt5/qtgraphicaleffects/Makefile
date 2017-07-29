# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:14 zhuk Exp $

QT5NAME =		QtGraphicalEffects
REVISION =		1
COMMENT =		UI effects library for Qt Quick

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
