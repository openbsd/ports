# $OpenBSD: Makefile,v 1.18 2021/11/15 06:22:58 rsadowski Exp $

COMMENT =	QtQuick based components set
DISTNAME =	kirigami2-${VERSION}
PKGNAME =	kf5-${DISTNAME}
REVISION =	0

HOMEPAGE =	https://api.kde.org/frameworks/kirigami/html/index.html

SHARED_LIBS +=  KF5Kirigami2              3.2 # 5.41

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB += m

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtsvg

RUN_DEPENDS =	devel/kf5/breeze-icons>=${MODKF5_VERSION} \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtsvg

LIB_DEPENDS =	x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
