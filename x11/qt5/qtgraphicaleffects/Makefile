# $OpenBSD: Makefile,v 1.9 2020/01/07 20:22:07 zhuk Exp $

QT5NAME =		QtGraphicalEffects
COMMENT =		UI effects library for Qt Quick
REVISION =		0

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
