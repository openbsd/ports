# $OpenBSD: Makefile,v 1.13 2020/03/23 18:01:08 rsadowski Exp $

COMMENT =		KDE item models extending the Qt model-view framework
DISTNAME =		kitemmodels-${VERSION}

SHARED_LIBS =		KF5ItemModels		5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml m

BUILD_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtscript

RUN_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtscript

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
