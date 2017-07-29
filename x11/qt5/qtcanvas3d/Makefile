# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:13 zhuk Exp $

QT5NAME =		QtCanvas3D
REVISION =		0
COMMENT-main =		QML types for the Qt5 Canvas 3D API

MULTI_PACKAGES =	-main -examples

WANTLIB =  ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
