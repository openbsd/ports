# $OpenBSD: Makefile,v 1.1.1.1 2020/03/13 16:39:39 rsadowski Exp $

QT5NAME =		QtLottie
COMMENT =		QML API for rendering graphics and animations

SHARED_LIBS +=  Qt5Bodymovin              0.0 # 5.13

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
