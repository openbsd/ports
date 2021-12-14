# $OpenBSD: Makefile,v 1.1.1.1 2021/12/14 18:16:12 rsadowski Exp $

COMMENT =	QtQuick module providing high-performance charts
DISTNAME =	kquickcharts-${VERSION}

HOMEPAGE =	https://api.kde.org/frameworks/kquickcharts/html/index.html

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5QuickControls2 m

LIB_DEPENDS =	x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
