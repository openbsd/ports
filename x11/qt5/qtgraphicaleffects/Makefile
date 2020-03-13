# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:51 rsadowski Exp $

QT5NAME =		QtGraphicalEffects
COMMENT =		UI effects library for Qt Quick

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
