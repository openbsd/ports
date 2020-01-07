# $OpenBSD: Makefile,v 1.9 2020/01/07 20:22:07 zhuk Exp $

QT5NAME =		QtCanvas3D
COMMENT-main =		QML types for the Qt5 Canvas 3D API
REVISION-main =		0

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
